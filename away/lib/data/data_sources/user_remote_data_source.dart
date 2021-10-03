import 'package:away/core/error/failures.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/user_service.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';

class UserRemoteDataSource {
  final UserServiceClient client;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  UserRemoteDataSource(this.client);

  User? get firebaseUser => FirebaseAuth.instance.currentUser;

  Future<void> delete() async {
    String token = await firebaseUser!.getIdToken();
    final res = await client.deleteUser(DeleteUserRequest(),
        options: CallOptions(metadata: {"token": token}));
    print(res);
  }

  Future<Either<Failure, AwayUser>> getAwayUser() async {
    try {
      final token = await firebaseUser!.getIdToken();

      final response = await client.getUser(
          GetUserRequest(id: firebaseUser!.uid),
          options: CallOptions(metadata: {"token": token}));
      // Load the profile
      getIt.unregister<AwayUser>();
      getIt.registerSingleton<AwayUser>(response.user);
      return Right(response.user);
    } on GrpcError catch (e) {
      if (e.code == StatusCode.notFound) {
        return Left(UserNotFoundFailure(e.message ?? e.code.toString()));
      }
      return Left(ServerFailure(ServerException(e.code, e.message)));
    } catch (e) {
      return Left(UnknownFailure("Unexpected error occured"));
    }
  }

  Future<Either<Failure, AwayUser>> createUser(
    String username,
    String bio,
    String deviceToken,
    String profilePictureUrl,
  ) async {
    try {
      await client.createUser(
        CreateUserRequest(
          userName: username,
          bio: bio,
          deviceToken: deviceToken,
          profilePictureUrl: profilePictureUrl,
        ),
        options:
            CallOptions(metadata: {"token": await firebaseUser!.getIdToken()}),
      );
      return getAwayUser();
    } on GrpcError catch (e) {
      return Left(ServerFailure(ServerException(e.code, e.message)));
    }
  }

  Future<Either<Failure, bool>> googleSignIn() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        // Dialog dismissed
        return Left(GenericFailure("Google Sign in cancelled"));
      }
      GoogleSignInAuthentication googleAuth =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      await FirebaseAuth.instance.signInWithCredential(credential);
      return Right(true);
    } catch (error) {
      print(error);
      return Left(UnknownFailure(""));
    }
  }
}

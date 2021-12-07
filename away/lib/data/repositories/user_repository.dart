import 'package:away/core/error/failures.dart';
import 'package:away/data/data_sources/user_remote_data_source.dart';
import 'package:away/data/models/general_location_info.dart';
import 'package:away/generated/user_service.pb.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';

class UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepository(this.remoteDataSource);

  Future<Either<Failure, AwayUser>> getAwayUser() {
    return remoteDataSource.getAwayUser();
  }

  Future<Either<Failure, AwayUser>> createUser(String username, String bio,
      String deviceToken, String profilePictureUrl) {
    return remoteDataSource.createUser(
        username, bio, deviceToken, profilePictureUrl);
  }

  Future<Either<Failure, bool>> googleSignIn() {
    return remoteDataSource.googleSignIn();
  }

  User? get firebaseUser => remoteDataSource.firebaseUser;

  Future<void> delete() async {
    remoteDataSource.delete();
  }

  Future<GeneralLocationInfo> getGeneralUserLocationInfo() {
    return remoteDataSource.getGeneralUserLocationInfo();
  }
}

import 'package:away/core/error/failures.dart';
import 'package:away/core/firebase_notification_handler.dart';
import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void googleSignIn() async {
    emit(AuthLoading());
    var googleSignInResult = await getIt<UserRepository>().googleSignIn();

    googleSignInResult.fold((l) {
      if (l is UnknownFailure) {
        emit(AuthFailed(l.message));
      } else if (l is GenericFailure) {
        // Sign in cancelled
        emit(AuthInitial());
      } else {
        emit(AuthFailed("Something went wrong"));
      }
    }, (r) async {
      final result = await getIt<UserRepository>().getAwayUser();

      result.fold((l) async {
        // User does not exist; Register
        final fbUser = getIt<UserRepository>().firebaseUser!;
        String username = fbUser.displayName!;
        String profilePictureUrl = fbUser.photoURL ?? "";

        final registrationResult = await getIt<UserRepository>().createUser(
            username,
            "I am using Away",
            await FirebaseNotificationHandler.getDeviceToken(),profilePictureUrl);

        registrationResult.fold(
          (l) {
            String msg = "";
            if (l is ServerFailure) {
              msg = l.se.message ?? "Server error, please try again.";
            }

            emit(AuthFailed(msg));
          },
          (r) => emit(AuthSuccess()),
        );
      }, (user) {
        // No need to load user as that is taken care of in UserRemoteDataSource
        emit(AuthSuccess());
      });
    });
  }
}

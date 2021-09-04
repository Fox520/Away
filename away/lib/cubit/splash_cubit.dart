import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void attemptAutoLogin() async {
    try {
      // if firebase user != null; fetch profile, go home
      if (getIt<UserRepository>().firebaseUser != null) {
        final getUserResult = await getIt<UserRepository>().getAwayUser();
        getUserResult.fold((l) {
          // Some error happened, navigate to login
          emit(SplashAutoLoginFail());
          // Navigator.of(context).pushNamedAndRemoveUntil(
          //     LoginPage.routeName, (Route<dynamic> route) => false);
        }, (r) {
          // navigate to home
          emit(SplashAutoLoginSuccess());
        });
      } else {
        // navigate to login
        emit(SplashAutoLoginFail());
        // Navigator.of(context).pushNamedAndRemoveUntil(
        // LoginPage.routeName, (Route<dynamic> route) => false);
      }
    } catch (e) {
      // on exception; navigate to login
      print(e);
      emit(SplashAutoLoginFail());
    }
  }
}

import 'package:away/cubit/splash_cubit.dart';
import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/presentation/pages/home/home_page.dart';
import 'package:away/presentation/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = "/splash_page";
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      BlocProvider.of<SplashCubit>(context).attemptAutoLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashAutoLoginFail) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                LoginPage.routeName, (Route<dynamic> route) => false);
          } else {
            Navigator.of(context).pushNamedAndRemoveUntil(
                HomePage.routeName, (Route<dynamic> route) => false);
          }
        },
        builder: (context, state) {
          return Center(
            child: FlutterLogo(
              size: 150,
            ),
          );
        },
      ),
    );
  }
}

import 'package:away/cubit/auth_cubit.dart';
import 'package:away/presentation/pages/login/login_page.dart';
import 'package:away/presentation/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashPage.routeName:
        return MaterialPageRoute(
          settings: RouteSettings(name: settings.name),
          builder: (context) {
            return SplashPage();
          },
        );
      case LoginPage.routeName:
        return MaterialPageRoute(
          settings: RouteSettings(name: settings.name),
          builder: (context) {
            return BlocProvider(
              create: (context) => AuthCubit(),
              child: LoginPage(),
            );
          },
        );
    }
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text("undefined route: ${settings.name ?? 'unknown route'}"),
        ),
      );
    });
  }
}

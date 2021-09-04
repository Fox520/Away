import 'package:away/config/route_generator.dart';
import 'package:away/cubit/splash_cubit.dart';
import 'package:away/presentation/pages/splash/splash_page.dart';
import 'package:away/presentation/theme/apptheme.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di/locator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      navigatorObservers: [getIt<FirebaseAnalyticsObserver>()],
      home: BlocProvider(
        create: (context) => SplashCubit(),
        child: SplashPage(),
      ),
    );
  }
}

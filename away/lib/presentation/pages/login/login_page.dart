// import 'package:away/cubit/auth_cubit.dart';
import 'package:away/cubit/auth_cubit.dart';
import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/presentation/pages/home/home_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/login_page";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/window.jpg",
                width: screenWidth,
                height: screenHeight,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 250,
                child: Container(
                  width: screenWidth,
                  // color: Colors.black38.withOpacity(0.5),
                  child: Column(
                    children: [
                      Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text("away",
                              style: GoogleFonts.pacifico(
                                  fontSize: 63,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 6
                                    ..color = Colors.black)),
                          Text(
                            'away',
                            style: GoogleFonts.pacifico(
                              fontSize: 63,
                              foreground: Paint()
                                ..strokeWidth = 6
                                ..color = Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Stack(
                        children: [
                          Text("your home away from home",
                              style: GoogleFonts.pacifico(
                                  fontSize: 20,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 6
                                    ..color = Colors.black)),
                          Text(
                            'your home away from home',
                            style: GoogleFonts.pacifico(
                              fontSize: 20,
                              foreground: Paint()
                                ..strokeWidth = 6
                                ..color = Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 150),
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state is AuthFailed) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(state.reason)));
                          }

                          if (state is AuthSuccess) {
                            // Go to home
                            // ScaffoldMessenger.of(context).showSnackBar(
                            // SnackBar(content: Text("logged in, profile loaded")));
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                HomePage.routeName,
                                (Route<dynamic> route) => false);
                          }
                        },
                        builder: (context, state) {
                          if (state is AuthLoading) {
                            // Show loading indicator
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return LoginButton(
                            iconPath: "assets/images/google_logo.png",
                            text: "Continue with Google",
                            callback: () {
                              // test delete
                              // getIt<UserRepository>().delete();
                              // Call business logic
                              BlocProvider.of<AuthCubit>(context)
                                  .googleSignIn();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback callback;

  const LoginButton({
    required this.iconPath,
    required this.text,
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            darkModeOn ? Color(0xFF2E2E2E) : Colors.white),
        side: MaterialStateProperty.all(
            BorderSide(width: 2.0, color: Colors.grey)),
        padding:
            MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15)),
      ),
      onPressed: callback,
      icon: Image.asset(
        iconPath,
        width: 27.78,
        height: 27.16,
      ),
      label: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontSize: 21.68, color: darkModeOn ? Colors.white : Colors.black),
      ),
    );
  }
}

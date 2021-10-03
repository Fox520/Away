import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      brightness: Brightness.light,
      textTheme: GoogleFonts.poppinsTextTheme()
          .apply(bodyColor: Colors.white, displayColor: Colors.white),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFF007BF5),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: CupertinoColors.white,
      textTheme: CupertinoTextThemeData(),
      barBackgroundColor: CupertinoColors.lightBackgroundGray,
      primaryColor: CupertinoColors.activeBlue,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: CupertinoColors.darkBackgroundGray,
      brightness: Brightness.dark,
      textTheme: GoogleFonts.poppinsTextTheme()
          .apply(bodyColor: Colors.white, displayColor: Colors.white),
    ),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
      textTheme: CupertinoTextThemeData(
          textStyle: GoogleFonts.poppins(color: Colors.white)),
      barBackgroundColor: CupertinoColors.darkBackgroundGray,
      primaryColor: CupertinoColors.activeBlue,
    ),
    backgroundColor: CupertinoColors.darkBackgroundGray,
    scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
    iconTheme: IconThemeData(
      color: Color(0xFF007BF5),
    ),
    textTheme: GoogleFonts.poppinsTextTheme()
        .apply(bodyColor: Colors.white, displayColor: Colors.white),
  );
}

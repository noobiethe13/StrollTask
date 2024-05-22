import 'package:flutter/material.dart';

class Palette {
  // COLORS
  static const blackColor = Colors.black;
  static const greyColor = Color(0xff232A2E);
  static const whiteColor = Colors.white;
  static const violetColor = Color(0xff8B88EF);
  static const lightVioletColor = Color(0xffCCC8FF);

  // MODES
  static var darkMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: blackColor,
    cardColor: greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: greyColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
    primaryColor: violetColor,
  );

  static var lightMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whiteColor,
    cardColor: greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: greyColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: blackColor,
      ),
    ),
    primaryColor: violetColor,
  );
}
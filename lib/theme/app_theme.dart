import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppCeibaTheme {
  static const Color themeColor = Color.fromRGBO(41, 85, 46, 1);

  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color tileBgColor = Color.fromRGBO(250, 250, 250, 1);
  static const Color bgColor = Color.fromRGBO(244, 244, 244, 1);
  static const Color blackColor = Color.fromRGBO(0, 0, 0, 1);

  static void initStylesValues() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static ThemeData getTheme() {
    const TextStyle textStyle = TextStyle(
      color: themeColor,
    );
    const TextStyle hintStyle = TextStyle(
      color: themeColor,
    );

    return ThemeData.light().copyWith(
      useMaterial3: true,
      primaryColor: themeColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: themeColor, secondary: themeColor, background: bgColor),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: themeColor,
          fontSize: 23,
        ),
        displayMedium: TextStyle(
          color: themeColor,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: themeColor,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: themeColor,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: themeColor,
          fontSize: 15,
        ),
        bodyMedium: TextStyle(
          color: themeColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: textStyle,
        hintStyle: hintStyle,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: themeColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: themeColor),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: themeColor),
        ),
      ),
      iconTheme: const IconThemeData(color: themeColor, size: 20),
      appBarTheme:
          const AppBarTheme(color: themeColor, foregroundColor: whiteColor),
      listTileTheme: const ListTileThemeData(
        titleTextStyle: TextStyle(
            color: themeColor, fontWeight: FontWeight.w600, fontSize: 17),
        subtitleTextStyle: TextStyle(color: blackColor, fontSize: 11),
        tileColor: whiteColor,
        selectedTileColor: themeColor,
        selectedColor: whiteColor,
        iconColor: themeColor,
      ),
    );
  }

  static TextStyle getPostButtonStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w600,
      color: themeColor,
      fontSize: 12,
      letterSpacing: 0.01,
    );
  }
}

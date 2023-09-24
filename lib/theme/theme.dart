import 'package:flutter/material.dart';

class ThemeConstants {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: lightBlue,
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.black),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    )),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 60,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w100,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
      primaryColor: lightBlue,
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.black),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      )),
      textTheme: lightTheme.textTheme
          .apply(bodyColor: Colors.white, displayColor: Colors.white));

  static Color lightBlue = Colors.lightBlue;
  const ThemeConstants._();
}

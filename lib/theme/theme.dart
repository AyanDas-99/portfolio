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
    ),
  );

  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    primaryColor: lightBlue,
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.black),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    )),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static Color lightBlue = Colors.lightBlue;
  const ThemeConstants._();
}

import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData = ThemeData(
    primaryColor: Colors.white,
    focusColor: Colors.white,
    scaffoldBackgroundColor: const Color.fromRGBO(38, 126, 189, 1),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      headline3: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class AppTheme {
  static const Color dark = Color(0xFF1E1E1E);
  static const Color light = Color(0xFFFFFFFF);
  static const Color medium = Color(0xFF888888);

  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: light,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
          color: dark,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.blueGrey,
      scaffoldBackgroundColor: dark,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueGrey,
        titleTextStyle: TextStyle(
          color: light,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
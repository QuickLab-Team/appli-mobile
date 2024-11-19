import 'package:flutter/material.dart';
import 'package:application/core/constants/app_strings.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: AppStrings.fontFamily,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromRGBO(247, 246, 207, 1.0),
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 14),
        bodyText2: TextStyle(fontSize: 16),
        headline1: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
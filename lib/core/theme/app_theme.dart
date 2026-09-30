import 'package:flutter/material.dart';

class AppTheme {
  static const Color primarySeed = Color(0xFF1E88E5); // Professional teal/blue for financial app

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primarySeed,
        brightness: Brightness.light,
      ),
      fontFamily: null, // Default system font or standard Arabic compatible font
      scaffoldBackgroundColor: const Color(0xFFF8F9FA),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primarySeed,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: const Color(0xFF121212),
    );
  }
}

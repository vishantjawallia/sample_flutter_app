import 'package:flutter/material.dart';
import 'package:sample_flutter_app/theme/palettes.dart';

class CustomTheme {
  static final ThemeData light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Palettes.white,
    appBarTheme: ThemeData().appBarTheme.copyWith(backgroundColor: Colors.white),
    primaryIconTheme: const IconThemeData(color: Colors.black),
    primaryColorDark: Palettes.primary,
    iconTheme: ThemeData().iconTheme.copyWith(color: Palettes.grey),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, color: Palettes.textColor),
      displayMedium: TextStyle(fontSize: 30, color: Palettes.textColor),
      displaySmall: TextStyle(fontSize: 28, color: Palettes.textColor),
      headlineLarge: TextStyle(fontSize: 26, color: Palettes.textColor),
      headlineMedium: TextStyle(fontSize: 24, color: Palettes.textColor),
      headlineSmall: TextStyle(fontSize: 22, color: Palettes.textColor),
      titleLarge: TextStyle(fontSize: 20, color: Palettes.textColor),
      titleMedium: TextStyle(fontSize: 18, color: Palettes.textColor),
      titleSmall: TextStyle(fontSize: 16, color: Palettes.textColor),
      bodyLarge: TextStyle(fontSize: 14, color: Palettes.textColor),
      bodyMedium: TextStyle(fontSize: 12, color: Palettes.textColor),
      bodySmall: TextStyle(fontSize: 10, color: Palettes.textColor),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue).copyWith(secondary: Palettes.primary),
  );

  static final ThemeData dark = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Palettes.black,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: ThemeData().appBarTheme.copyWith(backgroundColor: Palettes.black),
    iconTheme: ThemeData().iconTheme.copyWith(color: Palettes.white),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 34, color: Palettes.white),
      displayMedium: TextStyle(fontSize: 32, color: Palettes.white),
      displaySmall: TextStyle(fontSize: 30, color: Palettes.white),
      headlineLarge: TextStyle(fontSize: 28, color: Palettes.white),
      headlineMedium: TextStyle(fontSize: 26, color: Palettes.white),
      headlineSmall: TextStyle(fontSize: 24, color: Palettes.white),
      titleLarge: TextStyle(fontSize: 22, color: Palettes.white),
      titleMedium: TextStyle(fontSize: 20, color: Palettes.white),
      titleSmall: TextStyle(fontSize: 18, color: Palettes.white),
      bodyLarge: TextStyle(fontSize: 16, color: Palettes.white),
      bodyMedium: TextStyle(fontSize: 14, color: Palettes.white),
      bodySmall: TextStyle(fontSize: 12, color: Palettes.white),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue).copyWith(secondary: Palettes.primary),
  );
}

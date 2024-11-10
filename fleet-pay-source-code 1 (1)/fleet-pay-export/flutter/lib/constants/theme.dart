import 'package:flutter/material.dart';

const Color primary = Color(0xFF08314f);
const Color secondary = Color(0xFF3df7d5);
ThemeData get _baseTheme => ThemeData(
      primaryColor: primary,
      colorScheme: const ColorScheme.light(
        primary: primary,
        secondary: secondary,
      ),
      dividerTheme: const DividerThemeData(
        color: Color(0xFFE6E9ED),
        space: 0,
        thickness: 1.5,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color(0xFF08314f),
      ),
    );
ThemeData get theme => _baseTheme.copyWith(
      primaryColor: const Color(0xFF08314f),
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF08314f),
        secondary: Color(0xFF04b197),
        surface: Color(0xFFE6E9ED),
        error: Color(0xFFE57373),
        onPrimary: Color(0xFFF0F4F8),
        onSecondary: Color(0xFF08314f),
        onSurface: Color(0xFF333333),
        onError: Color(0xFFF0F4F8),
      ),
    );

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/app_constants.dart';
import '../../../di/dependency_injection.dart';
part 'custom_theme.g.dart';

@riverpod
class CustomTheme extends _$CustomTheme {
  final prefs = locator<SharedPreferences>();

  @override
  ThemeAttrs build() {
    return _loadTheme();
  }

  ThemeAttrs _loadTheme() {
    int? modeIndex = prefs.getInt(AppConstants.themeKey);
    ThemeModes mode = modeIndex == null ? ThemeModes.light : ThemeModes.values[modeIndex];
    return mode == ThemeModes.light ? LightThemeAttrs() : DarkThemeAttrs();
  }

  Future<void> _saveTheme() async {
    prefs.setInt(AppConstants.themeKey, state.mode.index);
  }

  Future<void> toggleTheme() async {
    bool isLight = state.mode == ThemeModes.light;
    state = isLight ? DarkThemeAttrs() : LightThemeAttrs();
    _saveTheme();
  }
}

enum ThemeModes{
  light,
  dark
}

// Attribute class for other things not just colors
abstract class ThemeAttrs {
  ThemeModes get mode;
  String get name;
  IconData get icon;
  ThemeData get colors;
}

class LightThemeAttrs implements ThemeAttrs {
  @override
  ThemeModes get mode => ThemeModes.light;
  @override
  String get name => "Light Theme";
  @override
  IconData get icon => Icons.light_mode_outlined;
  @override
  ThemeData get colors => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const  ColorScheme.light(
        background: Color(0xFFFFFFFF),
        primary: Color(0xFF000000),
        secondary: Color(0xFFE1A7FF),
      ),
      appBarTheme: const AppBarTheme().copyWith(),
      textTheme: const TextTheme().copyWith().apply(
          bodyColor: const Color(0xFF000000)
      )
  );
}

class DarkThemeAttrs implements ThemeAttrs {
  @override
  ThemeModes get mode => ThemeModes.dark;
  @override
  String get name => "Dark Theme";
  @override
  IconData get icon => Icons.nights_stay;
  @override
  ThemeData get colors => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        background: Color(0xFF000000),
        primary: Color(0xFFFFFFFF),
        secondary: Color(0xFFE1A7FF),
      ),
      appBarTheme: const AppBarTheme().copyWith(),
      textTheme: const TextTheme().copyWith().apply(
          bodyColor: const Color(0xFFFFFFFF)
      )
  );
}
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/app_constants.dart';
import '../../app/theme/dark_theme_attrs.dart';
import '../../app/theme/light_theme_attrs.dart';
import '../../app/theme/theme_attrs.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeProvider({
    required this.prefs
  }){
    _loadTheme();
  }

  final SharedPreferences prefs;

  ThemeAttrs _attrs = LightThemeAttrs();
  ThemeAttrs get attrs => _attrs;

  Future<void> toggleTheme() async {
    bool isLight = attrs.mode == ThemeModes.light;
    _attrs = isLight ? DarkThemeAttrs() : LightThemeAttrs();
    _saveTheme();
    notifyListeners();
  }

  void _loadTheme() {
    int? modeIndex = prefs.getInt(AppConstants.themeKey);
    ThemeModes mode = modeIndex == null ? ThemeModes.light : ThemeModes.values[modeIndex];
    _attrs = mode == ThemeModes.light ? LightThemeAttrs() : DarkThemeAttrs();
  }

  Future<void> _saveTheme() async {
    prefs.setInt(AppConstants.themeKey, attrs.mode.index);
  }

}
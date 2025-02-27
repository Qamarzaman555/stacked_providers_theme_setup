import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  // bool _isDarkMode = false;

  // bool get isDarkMode => _isDarkMode;

  // void toggleTheme() {
  //   _isDarkMode = !_isDarkMode;
  //   notifyListeners();
  // }

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'theme_service.dart';

class ThemeViewModel extends BaseViewModel {
  final ThemeService _themeService;

  ThemeViewModel(this._themeService) {
    _themeService.addListener(_onThemeChanged);
  }

  @override
  void dispose() {
    _themeService.removeListener(_onThemeChanged);
    super.dispose();
  }

  ThemeMode get themeMode => _themeService.themeMode;

  void toggleTheme() {
    _themeService.toggleTheme();
  }

  void _onThemeChanged() {
    notifyListeners();
  }
}

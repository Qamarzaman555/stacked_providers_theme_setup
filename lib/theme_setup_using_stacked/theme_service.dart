import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ThemeService with ListenableServiceMixin {
  ThemeService() {
    listenToReactiveValues([_themeMode]);
  }

  final ReactiveValue<ThemeMode> _themeMode = ReactiveValue(ThemeMode.light);

  ThemeMode get themeMode => _themeMode.value;
  set themeMode(ThemeMode mode) => _themeMode.value = mode;

  void toggleTheme() {
    _themeMode.value =
        _themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    debugPrint('${_themeMode.value}');
    notifyListeners();
  }
}

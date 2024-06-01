import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../extension/custom_theme_extension.dart';
import '../../utils/colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: Coloors.backgroundDark,
    extensions: [CustomThemeExtension.darkMode],
    appBarTheme: const AppBarTheme(
      backgroundColor: Coloors.backgroundLight,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Coloors.greenLight,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: Coloors.greyDark,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Coloors.greenDark,
          width: 2,
        ),
      ),
      unselectedLabelColor: Coloors.greyDark,
      labelColor: Coloors.greenDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Coloors.greenDark,
        foregroundColor: Coloors.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.greyBackground,
      modalBackgroundColor: Coloors.greyBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: Coloors.greyBackground,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Coloors.greenDark,
      foregroundColor: Colors.white,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Coloors.greyDark,
      tileColor: Coloors.backgroundDark,
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(Coloors.greyDark),
      trackColor: WidgetStatePropertyAll(Color(0xFF344047)),
    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        error: Coloors.greyDark,
        onError: Coloors.greyDark,
        onPrimary: Coloors.greyDark,
        onSecondary: Coloors.greyDark,
        onSurface: Coloors.greyDark,
        primary: Coloors.greenDark,
        secondary: Coloors.greenDark,
        surface: Coloors.backgroundDark),
  );
}

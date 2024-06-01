import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/theme_controller.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';

import 'views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'iPay',
      debugShowCheckedModeBanner: false,
      themeMode: themeNotifier.themeMode,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const HomePage(),
    );
  }
}

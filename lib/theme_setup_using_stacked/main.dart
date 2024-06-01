import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'theme_service.dart';
import 'theme_viewmodel.dart';
import 'themes.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerSingleton(ThemeService());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ThemeViewModel>.reactive(
      viewModelBuilder: () => ThemeViewModel(locator<ThemeService>()),
      builder: (context, model, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: model.themeMode,
          home: const HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ThemeViewModel>.nonReactive(
      viewModelBuilder: () => ThemeViewModel(locator<ThemeService>()),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            title: const Text('Theme Toggle Example'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: model.toggleTheme,
              child: const Text('Toggle Theme'),
            ),
          ),
        );
      },
    );
  }
}

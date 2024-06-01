import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/theme_controller.dart';
import 'welcome_view/welcome_vu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                themeNotifier.toggleTheme();
              },
              icon: Icon(
                Icons.light_mode,
                color: Theme.of(context).dividerColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomePageVU()));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Theme.of(context).dividerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

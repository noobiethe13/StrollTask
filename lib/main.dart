import 'package:flutter/material.dart';
import 'package:strolltask/core/components/bottom_nav_bar.dart';
import 'package:strolltask/theme/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STROLL TASK',
      theme: Palette.lightMode,
      darkTheme: Palette.darkMode,
      themeMode: ThemeMode.system,
      home: const BottomNavBar(),
    );
  }
}




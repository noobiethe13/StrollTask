import 'package:flutter/material.dart';
import 'package:strolltask/theme/palette.dart';
import 'features/main_feature/screens/main_screen.dart';

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
      home: const MainScreen(),
    );
  }
}




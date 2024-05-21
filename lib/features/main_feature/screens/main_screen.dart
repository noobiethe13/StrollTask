import 'package:flutter/material.dart';
import 'package:strolltask/features/main_feature/components/background_component.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 7,
            child: BackgroundComponent(),
          ),
          Expanded(
            flex: 3,
            child: Container(
            ),
          ),
        ],
      ),
    );
  }
}
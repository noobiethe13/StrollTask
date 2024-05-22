import 'package:flutter/material.dart';
import 'package:strolltask/features/main_feature/components/background_component.dart';
import 'package:strolltask/features/main_feature/components/poll_container.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: BackgroundComponent(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const PollContainer(),
            ),
          ),
        ],
      ),
    );
  }
}
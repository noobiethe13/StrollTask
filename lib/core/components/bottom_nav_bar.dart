import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:strolltask/features/main_feature/screens/main_screen.dart';
import 'package:strolltask/theme/palette.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  void navigateNavBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> pages = [
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.heart,
          CupertinoIcons.flame,
          CupertinoIcons.chat_bubble,
          CupertinoIcons.person,
        ],
        activeIndex: currentIndex,
        gapLocation: GapLocation.none,
        onTap: (index) => navigateNavBar(index),
        iconSize: 42,
        activeColor: Palette.lightVioletColor,
        inactiveColor: Colors.grey,
        notchSmoothness: NotchSmoothness.defaultEdge,
        backgroundColor: Palette.greyColor,
      ),
      body: pages[currentIndex],
    );
  }
}

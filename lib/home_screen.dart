import 'package:flutter/material.dart';
import 'package:bee_app/screens/index.dart';
import 'package:provider/provider.dart';
import 'models/bottom_navigation_bar.dart';

var _screenList = [BeeHivesScreen(), QueensBeesScreen(), SettingsScreen()];

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarBee>(
      builder: (context, page, child) => Scaffold(
        body: _screenList[page.currentIndex],
      ),
    );
  }
}

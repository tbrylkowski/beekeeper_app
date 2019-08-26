import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_hive_screen.dart';
import 'constants/themes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.name,
      routes: {
        HomeScreen.name: (context) => HomeScreen(),
        AddNewHiveScreen.name: (context) => AddNewHiveScreen(),
      },
      theme: kLightBeeKeeperTheme,
    );
  }
}

void main() => runApp(MyApp());

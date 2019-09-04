import 'package:flutter/material.dart';
import 'screens/bee_hives_screen.dart';
import 'screens/add_hive_screen.dart';
import 'constants/themes.dart';
import 'package:provider/provider.dart';
import 'models/hives_data.dart';
import 'models/bottom_navigation_bar.dart';
import 'package:bee_app/screens/index.dart';
import 'home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => HivesData(),
        ),
        ChangeNotifierProvider(
          builder: (context) => BottomNavigationBarBee(),
        )
      ],
      child: MaterialApp(
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          BeeHivesScreen.id: (context) => BeeHivesScreen(),
          AddNewHiveScreen.id: (context) => AddNewHiveScreen(),
        },
        theme: kLightBeeKeeperTheme,
      ),
    );
  }
}

void main() => runApp(MyApp());

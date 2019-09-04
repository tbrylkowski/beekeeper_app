import 'package:flutter/material.dart';
import 'package:bee_app/widgets/add_hive_floating_action_butto.dart';
import 'package:bee_app/constants/strings.dart';
import 'package:bee_app/widgets/index.dart';
import 'package:bee_app/screens/index.dart';
import 'package:provider/provider.dart';
import 'package:bee_app/models/index.dart';

var screenList = [HomeScreen(), HiveScreen(), SettingsScreen()];

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarBee>(
      builder: (context, page, child) => Scaffold(
        appBar: AppBar(
          title: Text(
            "Pomocnik Pszczelarza",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.calendar_today, color: Colors.black),
                onPressed: null),
            IconButton(
                icon: Icon(Icons.menu, color: Colors.black), onPressed: null),
          ],
        ),
        floatingActionButton: AddHiveFloatingActionButton(
            text: ADD_HIVE_FLOATING_ACTION_BUTTON_TEXT),
        bottomNavigationBar: BottomNavigationBarWidget(),
        body: screenList[page.currentIndex],
      ),
    );
  }
}

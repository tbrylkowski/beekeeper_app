import 'package:flutter/material.dart';
import 'package:bee_app/widgets/add_hive_floating_action_butto.dart';
import 'package:bee_app/constants/strings.dart';
import 'package:bee_app/widgets/index.dart';

class BeeHivesScreen extends StatelessWidget {
  static String id = "BeeHives";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: HivesListView(),
    );
  }
}

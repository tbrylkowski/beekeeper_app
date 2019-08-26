import 'package:flutter/material.dart';
import 'package:bee_app/widgets/hives_list.dart';
import 'package:bee_app/widgets/add_hive_floating_action_button.dart';
class HomeScreen extends StatelessWidget {
  static String name = "HomeScreen";
  final _itemList = 10;

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
              icon: Icon(Icons.menu, color: Colors.black), onPressed: null),
          IconButton(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              onPressed: null),
        ],
      ),
      floatingActionButton: new AddHiveFAB(text: 'DODAJ UL'),
      body: Container(
        child: HivesList(itemList: _itemList),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:bee_app/widgets/hives_list.dart';
import 'package:bee_app/screens/add_new_hive_screen.dart';

class HomeScreen extends StatelessWidget {
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
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.amber,
        onPressed: () => showModalBottomSheet(
            context: context, builder: (context) => AddNewHiveScreen()),
      ),
      body: Container(
        child: HivesList(itemList: _itemList),
      ),
    );
  }
}

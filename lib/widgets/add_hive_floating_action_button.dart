import 'package:flutter/material.dart';
import 'package:bee_app/screens/add_hive_screen.dart';

class AddHiveFAB extends StatelessWidget {
  final String text;

  AddHiveFAB({this.text});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.pushNamed(context, AddNewHiveScreen.name);
      },
      label: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      icon: Icon(
        Icons.add,
        color: Colors.black,
      ),
      backgroundColor: Colors.amber,
    );
  }
}

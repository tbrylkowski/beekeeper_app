import 'package:flutter/material.dart';
import 'package:bee_app/screens/add_hive_screen.dart';

class AddHiveFloatingActionButton extends StatelessWidget {
  final String text;

  const AddHiveFloatingActionButton({this.text});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.pushNamed(context, AddNewHiveScreen.id);
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

import 'package:flutter/material.dart';

class AddNewHiveScreen extends StatefulWidget {
  static String name = "AddNewHiveScreen";
  @override
  _AddNewHiveScreenState createState() => _AddNewHiveScreenState();
}

class _AddNewHiveScreenState extends State<AddNewHiveScreen> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dodaj nowy Ul"),
      ),
      body: Container(
        child: Center(child: Text("Hello")),
      ),
    );
  }
}

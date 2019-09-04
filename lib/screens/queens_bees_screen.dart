import 'package:flutter/material.dart';
import 'package:bee_app/widgets/index.dart';

class QueensBeesScreen extends StatelessWidget {
  static String id = "QueensBees";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Królowe pszczół"),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
      body: Container(
        child: Center(
          child: Text("QueenBee"),
        ),
      ),
    );
  }
}

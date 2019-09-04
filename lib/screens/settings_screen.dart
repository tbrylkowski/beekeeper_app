import 'package:flutter/material.dart';
import 'package:bee_app/widgets/index.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ustawienia"),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(child: Center(child: Text("Ustawienia"))),
      ),
    );
  }
}

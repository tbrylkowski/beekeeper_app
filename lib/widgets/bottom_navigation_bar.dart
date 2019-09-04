import 'package:bee_app/models/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarBee>(
      builder: (context, page, child) => BottomNavigationBar(
          currentIndex: page.currentIndex,
          onTap: (index) {
            page.currentIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.archive),
              title: Text("nie"),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.forumbee),
              title: Text("nie"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("nie"),
            )
          ]),
    );
  }
}

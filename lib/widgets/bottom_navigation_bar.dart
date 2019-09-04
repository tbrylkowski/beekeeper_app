import 'package:bee_app/models/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:bee_app/constants/strings.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarBee>(
      builder: (context, page, child) {
        return BottomNavigationBar(
            currentIndex: page.currentIndex,
            onTap: (int value) {
              page.changeIndex(value);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.archive),
                title: Text(HIVES_ICON_TEXT),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.forumbee),
                title: Text(BEE_QUEEN_ICON_TEXT),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(SETTINGS_ICON_TEXT),
              )
            ]);
      });
  }
}

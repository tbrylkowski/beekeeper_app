import 'package:flutter/material.dart';
import 'package:bee_app/models/hive_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HiveListItem extends StatelessWidget {
  final Hive _hive;

  HiveListItem(this._hive);

  @override
  Widget build(BuildContext context) =>
      Card(
        child: ListTile(
          title: Text("Czas startu: ${_hive.startDate}"),
          leading: Icon(FontAwesomeIcons.archive),
          trailing: CircleAvatar(
            child: Text(_hive.hiveNumber),
            backgroundColor: Colors.green,
          ),
          subtitle: Text("Todo list"),
        ),
      );
}

import 'package:flutter/material.dart';
import 'hive_list_item.dart';
import 'package:provider/provider.dart';
import 'package:bee_app/models/hives_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HivesListView extends StatefulWidget {
  @override
  _HivesListViewState createState() => _HivesListViewState();
}

class _HivesListViewState extends State<HivesListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HivesData>(
      builder: (context, hivesData, child) {
        final hivesList = hivesData.list;
        return ListView.builder(
          itemCount: hivesData.count,
          itemBuilder: (context, index) {
            final item = hivesData.list[index];
            return Dismissible(
                movementDuration: Duration(seconds: 2),
                direction: DismissDirection.horizontal,
                key: Key(item.toString()),
                confirmDismiss: (direction) async {
                  DismissDirection swapDirection = DismissDirection.endToStart;
                  if (direction == swapDirection) {
                    return true;
                  }
                  return false;
                },
                onDismissed: (direction) {
                  setState(() {
                    hivesData.remove(index);
                  });
                },
                background: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.green,
                  child: Icon(Icons.check),
                  alignment: Alignment.centerLeft,
                ),
                secondaryBackground: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.red,
                  child: Icon(FontAwesomeIcons.trash),
                  alignment: Alignment.centerRight,
                ),
                child: HiveListItem(hivesList[index]));
          },
        );
      },
    );
  }
}

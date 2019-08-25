import 'package:flutter/material.dart';
import 'hive_tile.dart';

class HivesList extends StatelessWidget {
  const HivesList({
    Key key,
    @required int itemList,
  })  : _itemList = itemList,
        super(key: key);

  final int _itemList;

  @override
  Widget build(BuildContext _) {
    return ListView.builder(
        itemCount: _itemList,
        itemBuilder: (_, index) {
          return new HiveTile(index: index);
        });
  }
}

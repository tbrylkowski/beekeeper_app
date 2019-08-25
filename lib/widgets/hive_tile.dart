import 'package:flutter/material.dart';

class HiveTile extends StatelessWidget {
  const HiveTile({
    Key key,
    @required int index,
  })  : _index = index,
        super(key: key);

  final int _index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Element number: $_index"),
      leading: CircleAvatar(backgroundColor: Colors.amber),
      trailing: CircleAvatar(
        child: Text("$_index"),
        backgroundColor: Colors.green,
      ),
      subtitle: Text("Current thing todo"),
    );
  }
}

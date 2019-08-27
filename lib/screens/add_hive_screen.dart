import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewHiveScreen extends StatefulWidget {
  static String name = "AddNewHiveScreen";

  @override
  _AddNewHiveScreenState createState() => _AddNewHiveScreenState();
}

class _AddNewHiveScreenState extends State<AddNewHiveScreen> {
  String _startButtonText = "Wybierz date startu";
  String _startTime;

  pickStartDateTime() async {
    DateTime dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2050));
        _startTime = DateFormat("dd.MM.yyyy").format(dateTime);
        setState(() {
          _startButtonText = _startTime;
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dodaj nowy Ul"),
      ),
      body: Container(
        child: Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                    onPressed: pickStartDateTime,
                    child: Text(_startButtonText)),
                FlatButton(onPressed: null, child: Text("Ul number")),
              ],
            )),
      ),
    );
  }
}

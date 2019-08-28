import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewHiveScreen extends StatefulWidget {
  static String name = "AddNewHiveScreen";

  @override
  _AddNewHiveScreenState createState() => _AddNewHiveScreenState();
}

class _AddNewHiveScreenState extends State<AddNewHiveScreen> {
  DateTime _startTime;
  final DateFormat formatDate = DateFormat("dd.MM.yyyy");
  final String kStartTimeHintText = 'Wybierz date startu';
  final _controllerStartTime = TextEditingController();
  final _controllerHiveNumber = TextEditingController();

  @override
  void dispose() {
    _controllerStartTime.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  void pickStartDateTime() async {
    DateTime dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2050));
    if (dateTime == null) {
      _startTime = DateTime.now();
    } else {
      _startTime = dateTime;
    }
    setState(() {
      _controllerStartTime.text = formatDate.format(_startTime);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 16.0, left: 16.0),
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Dodaj nowy ul",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                  ),
                ),
                child: Form(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          hintText: kStartTimeHintText,
                        ),
                        onTap: pickStartDateTime,
                        controller: _controllerStartTime,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _controllerHiveNumber,
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration:
                            InputDecoration(hintText: "Wpisz numer ula."),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          print('dzial');
                        },
                        child: Container(
                            decoration: BoxDecoration(color: Colors.amber),
                            child: Text("Dodaj nowy ul do listy.")),
                      )
                    ],
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

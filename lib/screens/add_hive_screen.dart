import 'package:bee_app/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bee_app/models/hives_data.dart';
import 'package:bee_app/models/hive_data.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddNewHiveScreen extends StatefulWidget {
  static String id = "AddNewHiveScreen";

  @override
  _AddNewHiveScreenState createState() => _AddNewHiveScreenState();
}

class _AddNewHiveScreenState extends State<AddNewHiveScreen> {
  DateTime _startTime;
  final DateFormat formatDate = DateFormat("dd.MM.yyyy");



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
      print(_startTime);
      _controllerStartTime.text = formatDate.format(_startTime);
    });
  }

  Widget build(BuildContext context) {
    return Consumer<HivesData>(
      builder: (context, hivesList, child) => Scaffold(
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
                flex: 2,
                child: Container(
                  width: double.infinity,
                  child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        FontAwesomeIcons.archive,
                        size: 80,
                      )),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(bottom: 16.0, left: 16.0),
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Dodaj nowy ul",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.date_range),
                            hintText: START_TIME_HINT_TEXT_FILED,
                          ),
//                        TODO: Bug - remove keyboard before Calendar
                          onTap: pickStartDateTime,
                          controller: _controllerStartTime,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _controllerHiveNumber,
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                              hintText: HIVE_NUMBER_HINT_TEXT_FILED,
                              icon: Icon(Icons.dialpad)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          textColor: Colors.black,
                          color: Colors.amber,
                          elevation: 0.0,
                          padding: EdgeInsets.all(0.0),
                          shape: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          onPressed: () {
                            hivesList.add(Hive(_startTime,
                                int.parse(_controllerHiveNumber.text)));
                            Navigator.pop(context);
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: EdgeInsets.all(8.0),
                              child: Text(ADD_HIVE_BUTTON)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

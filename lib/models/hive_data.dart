import 'package:intl/intl.dart';

class Hive {
  final DateFormat formatDate = DateFormat("dd.MM.yyyy");

  DateTime _startDate;
  String _number;

  Hive(this._startDate, this._number);

  String get startDate => formatDate.format(_startDate);

  String get hiveNumber => _number;
}

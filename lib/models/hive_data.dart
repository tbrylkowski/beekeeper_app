class Hive {
  DateTime _startDate;
  int _number;

  Hive(this._startDate, this._number);

  DateTime get startDate => _startDate;

  String get hiveNumber => _number.toString();
}

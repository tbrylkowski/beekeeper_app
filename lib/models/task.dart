class Task {
  DateTime _dateTime;

  String _toDo;

  Task(this._dateTime, this._toDo);

  String get toDo => _toDo;

  DateTime get dateTime => _dateTime;

  void changeTime(DateTime value) => _dateTime = value;

  void changeToDO(String value) => _toDo = value;
}

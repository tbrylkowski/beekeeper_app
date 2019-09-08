import 'task.dart';

class Hive {
  DateTime _startDate;

  int _number;

  List<Task> _list = [];

  Hive(this._startDate, this._number);

  DateTime get startDate => _startDate;

  String get hiveNumber => _number.toString();

  List get getTaskList => _list;

  void addTask(Task task) => _list.add(task);

  void getTaskAtIndex(int index) => _list.elementAt(index);
}

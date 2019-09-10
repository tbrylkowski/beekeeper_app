final String columnId = '_id';
final String columnDate = 'date';
final String columnDescription = 'description';
final String columnDone = 'done';

class Task {
  int id;
  int date;
  String description;
  bool done;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnDate: date,
      columnDescription: description,
      columnDone: done == true ? 1 : 0
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Task({this.date, this.description, this.done});

  Task.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    date = map[columnDate];
    description = map[columnDescription];
    done = map[columnDone] == 1;
  }
}

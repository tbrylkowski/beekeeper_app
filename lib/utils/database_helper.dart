import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:bee_app/models/task.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  final String tableToDo = 'todo';
  final String columnId = '_id';
  final String columnDate = 'date';
  final String columnDescription = 'description';
  final String columnDone = 'done';

  static Database _db;

  DatabaseHelper.internal();

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'bee.db');

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    await db.execute('''
      create table $tableToDo ( $columnId integer primary key autoincrement, 
          $columnDate integer not null,
          $columnDescription text not null,
          $columnDone integer not null)
     ''');
  }

  Future<int> saveTask(Task task) async {
    var dbClient = await db;
    var result = await dbClient.insert(tableToDo, task.toMap());
    return result;
  }

  Future<List> getAllTask() async {
    var dbClient = await db;
    var result =
        await dbClient.query(tableToDo, columns: [columnId, columnDate]);
    return result.toList();
  }

  Future<int> getCount(int id) async {
    var dbClient = await db;
    return Sqflite.firstIntValue(
        await dbClient.rawQuery('SELECT COUNT(*) FROM $tableToDo'));
  }

//  TODO update task method

  Future<void> close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}

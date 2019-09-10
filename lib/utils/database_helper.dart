import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:bee_app/models/task.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  final String tableTask = 'task';
  final String columnId = 'id';
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
    String path = join(databasesPath, 'bess.db');

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    await db.execute('''
      create table $tableTask ( $columnId integer primary key autoincrement, 
          $columnDate integer not null,
          $columnDescription text not null,
          $columnDone integer not null)
     ''');
  }

  Future<int> saveTask(Task task) async {
    var dbClient = await db;
    var result = await dbClient.insert(tableTask, task.toMap());
    return result;
  }

  Future<List> getAllTask() async {
    var dbClient = await db;
    var result = await dbClient
        .query(tableTask, columns: [columnId, columnDate, columnDescription, columnDone]);
    return result.toList();
  }

  Future<int> getCount() async {
    var dbClient = await db;
    return Sqflite.firstIntValue(
        await dbClient.rawQuery('SELECT COUNT(*) FROM $tableTask'));
  }

  Future<int> update(Task task) async {
    var dbClient = await db;
    return await dbClient.update(tableTask, task.toMap(),
        where: '$columnId = ?',
        whereArgs: [task.id]);
  }

  Future<void> delete(int id) async {
    var dbClient = await db;
    return dbClient.delete(tableTask, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<void> close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}

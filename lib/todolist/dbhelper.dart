import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = "todo.db";
  static const _databaseVersion = 1;

  static const table = 'my_table';

  static const columnId = 'id';
  static const columnName = 'todo';
  static Database? _database;

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  Future<Database?> get database async {
    if (_database != null) return _database;

    // create a database if one does not exist
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $table(
    $columnId INTEGER PRIMARY KEY,
    $columnName TEXT NOT NULL
    );
      ''');
  }

  Future<int?> insert(Map<String,dynamic>todo)async{
    Database? db = await instance.database;
    return await db?.insert(table, todo);
  }

  Future<List<Map<String,dynamic>>?> queryAllTodos() async{
    Database? db = await instance.database;
  return await db?.query(table);
  }

  Future<int?> deleteTodo(int id) async{
    Database? db = await instance.database;
  return await db?.delete(table,where: "id=?", whereArgs: [id]);
  }


}

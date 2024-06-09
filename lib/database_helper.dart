import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'nutrition.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE user (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      email TEXT NOT NULL,
      password TEXT NOT NULL,
      birthdate TEXT NOT NULL,
      photo TEXT
    )
    ''');
  }

  Future<int> insert(String table, Map<String, dynamic> values) async {
    Database db = await database;
    return await db.insert(table, values);
  }

  Future<List<Map<String, dynamic>>> queryAll(String table) async {
    Database db = await database;
    return await db.query(table);
  }

  Future<int> update(String table, Map<String, dynamic> values, String where, List<dynamic> whereArgs) async {
    Database db = await database;
    return await db.update(table, values, where: where, whereArgs: whereArgs);
  }

  Future<int> delete(String table, String where, List<dynamic> whereArgs) async {
    Database db = await database;
    return await db.delete(table, where: where, whereArgs: whereArgs);
  }
}

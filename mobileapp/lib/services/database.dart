import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class DatabaseService {

  static Database? _db;

  static final DatabaseService instance = DatabaseService._contructor();


  final String _tasksTableName = "tasks";
  final String _tasksIdColumnName = "id";
  final String _tasksContentColumnName = "content";
  final String _tasksStatusColumnName = "status";

  DatabaseService._contructor(); 

  Future<Database> get database async {
    if (_db != null)return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
      final databaseDirPath = await getDatabasesPath();
      final databasePath = p.join(databaseDirPath , "master_db.db");
      final database = await openDatabase(
        databasePath,
         onCreate: (db , version){
          db.execute('''
          CREATE TABLE $_tasksTableName ("
          $_tasksIdColumnName INTERGER PRIMARY KEY,
          $_tasksContentColumnName TEXT NOT NULL,
          $_tasksStatusColumnName INTEGER NOT NULL,
          ")
          ''');
         }
        );
        return database;

  }
}
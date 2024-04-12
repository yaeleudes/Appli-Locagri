import 'package:formation_locagri/models/Chapter.dart';
import 'package:formation_locagri/models/User.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Dao{
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('locagri.db');
    return _database!;
  }

  static Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return openDatabase(path, version: 1, onCreate: _createDB);
  }

  static Future _createDB(Database db, int version) async {
    await db.execute(''' 
      CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY, score INTEGER) 
    ''');
    await db.execute(''' 
      CREATE TABLE IF NOT EXISTS chapters (id INTEGER PRIMARY KEY, title VARCHAR(500) NOT NULL, labelle VARCHAR(50) NOT NULL, end TEXT NOT NULL, valide TEXT) 
    ''');
  }

  static Future <User> addUser(User user) async {
    final Database db = await database;
    user.id = await db.insert('user', user.toMap(), conflictAlgorithm: ConflictAlgorithm.ignore,);
    return user;
  }

  static Future<User> getUser(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    } else {
      throw Exception('User not found');
    }
  }

  static Future<int> updateUser(User user) async {
    final Database db = await database;
    return await db.update(
      'user',
      user.toMap(),
      // user.toMap()..remove("id"),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  static Future<int> deleteUser(int id) async {
    final Database db = await database;
    return await db.delete(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  static Future<void> addChapters(List<Chapter> chapters) async {
    final db = await database;
    for (final chapter in chapters) {
      await db.insert(
        'chapters',
        chapter.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }
  }

  static Future<Chapter> getChapterById(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'chapters',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return Chapter.fromMap(maps.first);
    } else {
      throw Exception('Chapter not found');
    }
  }

  static Future<int> updateChapter(int id, String key, String value) async{
    final db = await database;
    print("success");
    return await db.update(
      'chapters', 
      {key : value},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
import 'package:formation_locagri/models/Chapter.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ChapterController{

  Future <Database> _database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'lacagri_formation.db'),
      onCreate: (db, version)  { 
        // Run the CREATE TABLE statement on the database.
        db.execute(
          'CREATE TABLE IF NOT EXISTS chapters (id INTEGER PRIMARY KEY, title TEXT, labelle TEXT NOT NULL, end TEXT NOT NULL, valide TEXT)',
        );
        // db.execute(
        //   'CREATE TABLE IF NOT EXISTS chapters (id INTEGER PRIMARY KEY, title TEXT, labelle TEXT NOT NULL, end TEXT NOT NULL, valide TEXT)',
        // );
      },
      version: 1,
    );
  }

  Future<void> addChapters(List<Chapter> chapters) async {
    final db = await _database();
    for (final chapter in chapters) {
      await db.insert(
        'chapters',
        chapter.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }
  }
  Future<List<Chapter>> getChapters() async {
    final db = await _database();
    final List<Map<String, dynamic>> maps = await db.query('chapters');
    return List.generate(maps.length, (i) {
      return Chapter(
        id: maps[i]['id'],
        title: maps[i]['title'],
        labelle: maps[i]['labelle'],
        end: maps[i]['end'],
        valide: maps[i]['valide'],
      );
    });
  }

  Future<Chapter> getChapterById(int id) async {
    final db = await _database();
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
}
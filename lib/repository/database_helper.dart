import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:feh_toolkit/model/hero_build.dart';
import 'package:feh_toolkit/model/hero.dart';
import 'package:feh_toolkit/model/weapon.dart';
import 'package:feh_toolkit/model/assist.dart';
import 'package:feh_toolkit/model/special.dart';
import 'package:feh_toolkit/model/skill.dart';
//import 'package:feh_toolkit/model/ally_condition.dart';
//import 'package:feh_toolkit/model/active_effect.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  // Initialize database at app launch
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "fehdata.db");

    // Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (e) {
        print("Error creating directory: $e");
      }

      // Copy from asset
      ByteData data = await rootBundle.load(join("assets", "feheroes_test.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }

    // open the database
    return await openDatabase(path);
  }

  // TABLE: HeroBuild

  // Insert new built hero in database
  Future<void> insertHeroBuild(HeroBuild heroBuild) async {
    final db = await instance.database;
    await db.insert(
      'HeroBuild',
      heroBuild.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update built hero in database
  Future<void> updateHeroBuild(HeroBuild heroBuild) async {
    try {
      final db = await instance.database;
      final int result = await db.update(
        'HeroBuild',
        heroBuild.toMap(),
        where: 'id = ?',
        whereArgs: [heroBuild.id],
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      if (result == 0) {
        print('No HeroBuild found with id ${heroBuild.id} to update.');
      } else {
        print('HeroBuild with id ${heroBuild.id} updated successfully.');
      }
    } catch (e) {
      print('Error updating HeroBuild: $e');
      // Handle the error accordingly, maybe rethrow it or log it
    }
  }

  // Get all built heroes from database
  Future<List<HeroBuild>> getAllHeroBuilds() async {
    final db = await instance.database;
    final result = await db.query('HeroBuild');

    return result.map((json) => HeroBuild.fromMap(json)).toList();
  }

  // Get filtered built heroes from database
  // IN PROGRESS...

  // Delete built hero in database
  Future<void> deleteHeroBuild(int id) async {
    final db = await instance.database;
    await db.delete(
      'HeroBuild',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // TABLE: Hero

  // Get all heroes
  Future<List<FeHero>> getAllHeroes() async {
    final db = await instance.database;
    final result = await db.query('Hero');

    return result.map((json) => FeHero.fromMap(json)).toList();
  }

  // Get filtered
  // IN PROGRESS...

  // TABLE: Weapon

  // Get all weapons
  Future<List<Weapon>> getAllWeapons() async {
    final db = await instance.database;
    final result = await db.query('Weapon');

    return result.map((json) => Weapon.fromMap(json)).toList();
  }

  // Get filtered
  // IN PROGRESS...

  // TABLE: Assist

  // Get all assists
  Future<List<Assist>> getAllAssists() async {
    final db = await instance.database;
    final result = await db.query('Assist');

    return result.map((json) => Assist.fromMap(json)).toList();
  }

  // Get filtered
  // IN PROGRESS...

  // TABLE: Special

  // Get all specials
  Future<List<Special>> getAllSpecials() async {
    final db = await instance.database;
    final result = await db.query('Special');

    return result.map((json) => Special.fromMap(json)).toList();
  }

  // Get filtered
  // IN PROGRESS...

  // TABLE: Skill

  // Get all skills
  Future<List<Skill>> getAllSkills() async {
    final db = await instance.database;
    final result = await db.query('Skill');

    return result.map((json) => Skill.fromMap(json)).toList();
  }

  // Get filtered
  // IN PROGRESS...

  // TABLE: AllyCondition

  // IN PROGRESS...

  // TABLE: ActiveEffect

  // IN PROGRESS...
}

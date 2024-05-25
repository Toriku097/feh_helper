import 'package:feh_toolkit/repository/database_helper.dart';
import 'package:feh_toolkit/model/hero_build.dart';

class HeroBuildController {
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Insert new built hero in database
  Future<void> insertHeroBuild(HeroBuild heroBuild) async {
    await _dbHelper.insertHeroBuild(heroBuild);
  }

  // Update built hero in database
  Future<void> updateHeroBuild(HeroBuild heroBuild) async {
    await _dbHelper.updateHeroBuild(heroBuild);
  }

  // Get all built heroes from database
  Future<List<HeroBuild>> getAllHeroBuilds() async {
    return await _dbHelper.getAllHeroBuilds();
  }

  // Get filtered built heroes from database
  // IN PROGRESS...

  // Delete built hero in database
  Future<void> deleteHeroBuild(int id) async {
    await _dbHelper.deleteHeroBuild(id);
  }
}

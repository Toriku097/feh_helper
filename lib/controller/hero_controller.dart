import 'package:feh_toolkit/repository/database_helper.dart';
import 'package:feh_toolkit/model/hero.dart';

class FeHeroController {
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Get all heroes
  Future<List<FeHero>> getAllHeroes() async {
    return  await _dbHelper.getAllHeroes();
  }
}
import 'package:feh_toolkit/repository/database_helper.dart';
import 'package:feh_toolkit/model/weapon.dart';

class WeaponController {
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Get all weapons
  Future<List<Weapon>> getAllWeapons() async {
    return await _dbHelper.getAllWeapons();
  }
}
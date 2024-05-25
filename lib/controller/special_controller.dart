import 'package:feh_toolkit/repository/database_helper.dart';
import 'package:feh_toolkit/model/special.dart';

class SpecialController {
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Get all specials
  Future<List<Special>> getAllSpecials() async {
    return await _dbHelper.getAllSpecials();
  }
}
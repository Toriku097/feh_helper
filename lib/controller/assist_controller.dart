import 'package:feh_toolkit/repository/database_helper.dart';
import 'package:feh_toolkit/model/assist.dart';

class AssistController {
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Get all assists
  Future<List<Assist>> getAllAssists() async {
    return await _dbHelper.getAllAssists();
  }
}

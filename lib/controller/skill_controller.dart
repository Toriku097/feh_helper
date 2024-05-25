import 'package:feh_toolkit/repository/database_helper.dart';
import 'package:feh_toolkit/model/skill.dart';

class SkillController {
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  // Get all skills
  Future<List<Skill>> getAllSkills() async {
    return await _dbHelper.getAllSkills();
  }
}
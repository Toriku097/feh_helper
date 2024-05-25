import 'package:feh_toolkit/controller/skill_controller.dart';
import 'package:flutter/material.dart';
import 'package:feh_toolkit/model/skill.dart';

class PassivesEncyclopedia extends StatefulWidget {
  const PassivesEncyclopedia({super.key});

  @override
  State<PassivesEncyclopedia> createState() => _PassivesEncyclopediaState();
}

class _PassivesEncyclopediaState extends State<PassivesEncyclopedia> {
  static final skillTable = SkillController();
  late List<Skill> skillList;
  var isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Load all list for smother loading
  Future<void> loadData() async {
    List<Skill> hList = await skillTable.getAllSkills();

    setState(() {
      skillList = hList;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        title: const Row(
          children: [
            Spacer(),
            Text('Order placeholder'),
            Icon(Icons.sort),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 10, right: 10),
        shrinkWrap: true,
        itemCount: skillList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(skillList[index].name);
        },
      ),
    );
  }
}

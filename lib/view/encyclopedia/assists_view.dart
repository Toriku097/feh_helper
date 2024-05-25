import 'package:feh_toolkit/controller/assist_controller.dart';
import 'package:flutter/material.dart';
import 'package:feh_toolkit/model/assist.dart';

class AssistsEncyclopedia extends StatefulWidget {
  const AssistsEncyclopedia({super.key});

  @override
  State<AssistsEncyclopedia> createState() => _AssistsEncyclopediaState();
}

class _AssistsEncyclopediaState extends State<AssistsEncyclopedia> {
  static final assistTable = AssistController();
  late List<Assist> assistList;
  var isLoading = true;  

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Load all list for smother loading
  Future<void> loadData() async {
    List<Assist> hList = await assistTable.getAllAssists();

    setState(() {
      assistList = hList;
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
        itemCount: assistList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(assistList[index].name);
        },
      ),
    );
  }
}

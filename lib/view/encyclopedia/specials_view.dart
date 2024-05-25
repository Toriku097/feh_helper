import 'package:feh_toolkit/controller/special_controller.dart';
import 'package:flutter/material.dart';
import 'package:feh_toolkit/model/special.dart';

class SpecialsEncyclopedia extends StatefulWidget {
  const SpecialsEncyclopedia({super.key});

  @override
  State<SpecialsEncyclopedia> createState() => _SpecialsEncyclopediaState();
}

class _SpecialsEncyclopediaState extends State<SpecialsEncyclopedia> {
  static final specialTable = SpecialController();
  late List<Special> specialList;
  var isLoading = true;  

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Load all list for smother loading
  Future<void> loadData() async {
    List<Special> hList = await specialTable.getAllSpecials();

    setState(() {
      specialList = hList;
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
        itemCount: specialList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(specialList[index].name);
        },
      ),
    );
  }
}

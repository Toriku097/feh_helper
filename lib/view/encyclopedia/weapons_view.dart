import 'package:feh_toolkit/controller/weapon_controller.dart';
import 'package:flutter/material.dart';
import 'package:feh_toolkit/model/weapon.dart';

class WeaponsEncyclopedia extends StatefulWidget {
  const WeaponsEncyclopedia({super.key});

  @override
  State<WeaponsEncyclopedia> createState() => _WeaponsEncyclopediaState();
}

class _WeaponsEncyclopediaState extends State<WeaponsEncyclopedia> {
  static final heroTable = WeaponController();
  late List<Weapon> weaponList;
  var isLoading = true;  

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Load all list for smother loading
  Future<void> loadData() async {
    List<Weapon> hList = await heroTable.getAllWeapons();

    setState(() {
      weaponList = hList;
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
        itemCount: weaponList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(weaponList[index].name);
        },
      ),
    );
  }
}

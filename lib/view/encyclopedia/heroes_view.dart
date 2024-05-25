import 'package:flutter/material.dart';
import 'package:feh_toolkit/model/hero.dart';
import 'package:feh_toolkit/controller/hero_controller.dart';


class HeroesEncyclopedia extends StatefulWidget {
  const HeroesEncyclopedia({super.key});

  @override
  State<HeroesEncyclopedia> createState() => _HeroesEncyclopediaState();
}

class _HeroesEncyclopediaState extends State<HeroesEncyclopedia> {
  static final heroTable = FeHeroController();
  late List<FeHero> heroList;
  var isLoading = true;  

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Load all list for smother loading
  Future<void> loadData() async {
    List<FeHero> hList = await heroTable.getAllHeroes();

    setState(() {
      heroList = hList;
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
        itemCount: heroList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(heroList[index].name);
        },
      ),
    );
  }
}

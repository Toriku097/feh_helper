import 'dart:async';
import 'dart:math';

import 'package:feh_toolkit/view/collection/build_view.dart';
import 'package:flutter/material.dart';
import 'package:feh_toolkit/model/hero_build.dart';
import 'package:feh_toolkit/controller/hero_build_controller.dart';
import 'package:feh_toolkit/model/hero.dart';
import 'package:feh_toolkit/controller/hero_controller.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: _HeroList(),
      ),
    );
  }
}

class _HeroList extends StatefulWidget {
  @override
  State<_HeroList> createState() => __HeroListState();
}

class __HeroListState extends State<_HeroList> {
  static final heroBuildTable = HeroBuildController();
  static final heroTable = FeHeroController();

  List<HeroBuild>? collection;
  late List<FeHero> heroList;
  int collectionSize = 0;

  late HeroBuild selectedBuild;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Load lists of Hero and HeroBuild from database to List
  Future<void> loadData() async {
    List<HeroBuild> hBList = await heroBuildTable.getAllHeroBuilds();
    List<FeHero> hList = await heroTable.getAllHeroes();

    setState(() {
      collection = hBList;
      heroList = hList;
      collectionSize = hBList.length;
    });
  }

  // Refresh collection
  Future<void> _refreshCollection() async {
    List<HeroBuild> hBList = await heroBuildTable.getAllHeroBuilds();

    setState(() {
      collection = hBList;
      collectionSize = hBList.length;
    });
  }

  // return hero from build
  FeHero selectHero(String heroName) {
    if (heroName != 'null') {
      return heroList.where((feHero) => feHero.name == heroName).first;
    } else {
      int randomHeroId = Random().nextInt(heroList.length) + 19;
      return heroList[randomHeroId];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // Figure out how to add programatically columns and row for the heroes
      // Container has to be scollable insinde
      // First value must be a clear button
      children: [
        // Will need another container for the other option
        // List of hero / list of unit in barracks / Fodder skill

        // Searh bar and sort
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 39, 39, 39),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          padding: const EdgeInsets.all(15),
          child: const Row(
            children: [
              Text('Search Bar'), // place holder, change to a search bar
              Spacer(),
              Text('Sort'),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.sort,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),

        // List of heroes
        // Container for list of heroes builded
        Expanded(
          // placeholder for hero list
          child: ListView.builder(
              padding: const EdgeInsets.only(left: 10, right: 10),
              shrinkWrap: true,
              itemCount: collectionSize,
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  onPressed: () {
                    setState(() {
                      selectedBuild = collection![index];
                    });
                  },
                  onLongPress: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HeroBuilder(currentBuild: collection![index])),
                    );
                    _refreshCollection();
                  },
                  child: Text(
                    collection?[index].hero ?? '',
                  ),
                );
              }),
        ),

        // Add & Delete buttons container
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 39, 39, 39),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text('Total Heroes: $collectionSize'),
                const Spacer(),

                // Button to build new hero
                IconButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HeroBuilder(
                                currentBuild:
                                    HeroBuild.fromHero(selectHero('null')))),
                      );
                      _refreshCollection();
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),

                // Button to delete a selected hero
                IconButton(
                    onPressed: () {
                      heroBuildTable.deleteHeroBuild(selectedBuild.id!);
                      _refreshCollection();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

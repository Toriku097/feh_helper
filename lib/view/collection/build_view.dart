import 'package:flutter/material.dart';
import 'package:feh_toolkit/model/hero_build.dart';
import 'package:feh_toolkit/controller/hero_build_controller.dart';
import 'package:feh_toolkit/model/hero.dart';
import 'package:feh_toolkit/controller/hero_controller.dart';
import 'package:flutter/rendering.dart';

class HeroBuilder extends StatefulWidget {
  HeroBuild currentBuild;
  FeHero currentHero;
  HeroBuilder({super.key, required this.currentBuild, required this.currentHero});

  @override
  State<HeroBuilder> createState() => _HeroBuilderState();
}

class _HeroBuilderState extends State<HeroBuilder> {
  static final heroBuildTable = HeroBuildController();
  static final heroTable = FeHeroController();

  late List<FeHero> heroList;
  bool modifying = false;
  var isModified = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Load hero list & initiate the hero build
  Future<void> loadData() async {
    List<FeHero> hList = await heroTable.getAllHeroes();

    setState(() {
      heroList = hList;

      if (widget.currentBuild.id != null){
        modifying = true;
      }
    });
  }

  // Update hero
  void changeHero(FeHero feHero) {
    setState(() {
      widget.currentHero = feHero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Details'),
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      ),
      body: Stack(
        children: [
          // image + back ground
          // IN PROGRESS...

          // rarity star
          // IN PROGRESS...

          // Name
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () =>
                searchHero(context),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 39, 39, 39),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                margin: const EdgeInsets.only(left: 10, bottom: 405),
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 25, right: 25),
                child: Text(
                  widget.currentHero.name,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),

          // Title
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              margin: const EdgeInsets.only(left: 10, bottom: 370),
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 25, right: 25),
              child: Text(widget.currentHero.title),
            ),
          ),

          // container with details & extra button
          Align(
            alignment: Alignment.bottomCenter,
            child: DetailsContainer(
                currentHero: widget.currentHero, currentBuild: widget.currentBuild),
          ),

          // done, cancel & save button
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!isModified)
                    const ElevatedButton(onPressed: null, child: Text('Done'))
                  else ...[
                    ElevatedButton(
                        onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (modifying == false) {
                            heroBuildTable.insertHeroBuild(widget.currentBuild);
                            Navigator.pop(context);
                          } else {
                            // UPDATE DOESN'T WORK
                            heroBuildTable.updateHeroBuild(widget.currentBuild);
                            Navigator.pop(context);
                          }
                        },
                        child: const Text('Save'))
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Search Hero sheet
  void searchHero(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      elevation: 5,
      isScrollControlled: true,
      builder: (_) => SizedBox(
        height: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // Title & Search bar
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              child: const Column(
                children: [
                  Text('Select Hero', style: TextStyle(fontSize: 20),),
                  Text('Search Bar'), // place holder, change to a search bar
                ],
              ),
            ),

            // List of heroes
            Expanded(
              // placeholder for hero list
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  shrinkWrap: true,
                  itemCount: heroList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TextButton(
                      onPressed: () {
                        changeHero(heroList[index]);
                        Navigator.pop(context);
                      },
                      child: Text(
                      heroList[index].name,),
                    );
                  }),
            ),

            // Cancel buttons container
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
                    const Spacer(),
                    ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container with the details of the hero
// CANNOT BE CHANGE THE DETAILS FOR NOW
class DetailsContainer extends StatefulWidget {
  FeHero currentHero;
  HeroBuild currentBuild;
  DetailsContainer(
      {super.key, required this.currentHero, required this.currentBuild});

  @override
  State<DetailsContainer> createState() => _DetailsContainerState();
}

class _DetailsContainerState extends State<DetailsContainer> {
  String growthCalculator(int stat, int growth) {
    int appliedGrowtRate = (growth * 1.14).truncate();
    int growthValue = (39 * (appliedGrowtRate / 100)).truncate();
    return (stat + growthValue).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 39, 39, 39),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 60),
      padding: const EdgeInsets.all(10),
      height: 300,
      child: Wrap(
        children: [
          Row(
            children: [
              // Left side
              Column(
                children: [
                  // Level, Weapon & Movement type
                  const Row(
                    children: [
                      // pacleholder for weapon and movement type icon
                      Icon(Icons.add_box),
                      Icon(Icons.add_box),
                      Text('LVL 40 +'),
                      // placeholder for fusion dropdown
                      Text('0')
                    ],
                  ),

                  // DragonFlower
                  const Row(
                    children: [
                      Text('DF boost: +'),
                      // placeholder for num dragonflower dropdown
                      Text('0')
                    ],
                  ),

                  // HP
                  Row(
                    children: [
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.remove)),
                      const Text('HP '),
                      Text(growthCalculator(
                          widget.currentHero.hp5, widget.currentHero.hpGrowth)),
                      const IconButton(onPressed: null, icon: Icon(Icons.add))
                    ],
                  ),

                  // ATK
                  Row(
                    children: [
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.remove)),
                      const Text('ATK '),
                      Text(growthCalculator(widget.currentHero.atk5,
                          widget.currentHero.atkGrowth)),
                      const IconButton(onPressed: null, icon: Icon(Icons.add))
                    ],
                  ),

                  // SPD
                  Row(
                    children: [
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.remove)),
                      const Text('SPD '),
                      Text(growthCalculator(widget.currentHero.spd5,
                          widget.currentHero.spdGrowth)),
                      const IconButton(onPressed: null, icon: Icon(Icons.add))
                    ],
                  ),

                  // DEF
                  Row(
                    children: [
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.remove)),
                      const Text('DEF '),
                      Text(growthCalculator(widget.currentHero.def5,
                          widget.currentHero.defGrowth)),
                      const IconButton(onPressed: null, icon: Icon(Icons.add))
                    ],
                  ),

                  // RES
                  Row(
                    children: [
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.remove)),
                      const Text('RES '),
                      Text(growthCalculator(widget.currentHero.res5,
                          widget.currentHero.resGrowth)),
                      const IconButton(onPressed: null, icon: Icon(Icons.add))
                    ],
                  ),
                ],
              ),
              // Right side
              const Spacer(),
              Column(
                children: [
                  // Weapon
                  Row(children: [
                    const Icon(Icons.abc),
                    Text(widget.currentHero.weapon)
                  ]),

                  // Assist
                  Row(children: [
                    const Icon(Icons.abc),
                    Text(widget.currentHero.assist ?? '-')
                  ]),

                  // Special
                  Row(children: [
                    const Icon(Icons.abc),
                    Text(widget.currentHero.special ?? '-')
                  ]),

                  // Skill A
                  Row(children: [
                    const Icon(Icons.abc),
                    Text(widget.currentHero.skillA ?? '-')
                  ]),

                  // Skill B
                  Row(children: [
                    const Icon(Icons.abc),
                    Text(widget.currentHero.skillB ?? '-')
                  ]),

                  // Skill C
                  Row(children: [
                    const Icon(Icons.abc),
                    Text(widget.currentHero.skillC ?? '-')
                  ]),

                  // Seal
                  const Row(children: [Icon(Icons.abc), Text('-')]),

                  // Attuened skill
                  const Row(children: [Icon(Icons.abc), Text('-')]),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

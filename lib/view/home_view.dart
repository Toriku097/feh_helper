import 'package:flutter/material.dart';
import 'package:feh_toolkit/view/encyclopedia/heroes_view.dart';
import 'package:feh_toolkit/view/encyclopedia/weapons_view.dart';
import 'package:feh_toolkit/view/encyclopedia/assists_view.dart';
import 'package:feh_toolkit/view/encyclopedia/specials_view.dart';
import 'package:feh_toolkit/view/encyclopedia/passives_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10),
        children: [
          // Newest Heroes container
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(15),
            child: const Text('Newest Heroes (IN PROGRESS...)'),
          ),

          // Calendar container
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(15),
            child: const Text('Calendar (IN PROGRESS...)'),
          ),

          // Recent tweets container
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(15),
            child: const Text('Tweets (IN PROGRESS...)'),
          ),

          // Heroes container
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HeroesEncyclopedia(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 39, 39, 39),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Heroes',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // Weapons container
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WeaponsEncyclopedia(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 39, 39, 39),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Weapons',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // Assists container
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AssistsEncyclopedia(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 39, 39, 39),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Assists',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // Specials container
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SpecialsEncyclopedia(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 39, 39, 39),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Specials',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // Passives container
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PassivesEncyclopedia(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 39, 39, 39),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Passives',
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ),
    );
  }
}

// need to add the content in the container above
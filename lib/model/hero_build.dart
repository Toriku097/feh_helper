import 'package:feh_toolkit/model/hero.dart';
import 'package:flutter/material.dart';

class HeroBuild {
  int? id;
  String hero;
  String? boon;
  String? bane;
  String? weapon;
  int refState;
  String? weaponAlt;
  String? assist;
  String? assistAlt;
  String? special;
  String? specialAlt;
  String? skillA;
  String? skillAAlt;
  String? skillB;
  String? skillBAlt;
  String? skillC;
  String? skillCAlt;
  String? seal;
  String? sealAlt;

  HeroBuild({
    this.id,
    required this.hero,
    this.boon,
    this.bane,
    this.weapon,
    this.refState = 0,
    this.weaponAlt,
    this.assist,
    this.assistAlt,
    this.special,
    this.specialAlt,
    this.skillA,
    this.skillAAlt,
    this.skillB,
    this.skillBAlt,
    this.skillC,
    this.skillCAlt,
    this.seal,
    this.sealAlt,
  });

  HeroBuild.fromHero(FeHero feHero)
      : hero = feHero.name,
        weapon = feHero.weapon,
        refState = 0,
        assist = feHero.assist,
        special = feHero.special,
        skillA = feHero.skillA,
        skillB = feHero.skillB,
        skillC = feHero.skillC;

  static HeroBuild updateBuild(FeHero feHero, int? id){
    HeroBuild build = HeroBuild.fromHero(feHero);
    build.id = id;
    return build;
  }

  Map<String, dynamic> toMap() {
    final map = {
      'hero': hero,
      'boon': boon,
      'bane': bane,
      'weapon': weapon,
      'ref_state': refState,
      'weapon_alt': weaponAlt,
      'assist': assist,
      'assist_alt': assistAlt,
      'special': special,
      'special_alt': specialAlt,
      'skill_a': skillA,
      'skill_a_alt': skillAAlt,
      'skill_b': skillB,
      'skill_b_alt': skillBAlt,
      'skill_c': skillC,
      'skill_c_alt': skillCAlt,
      'seal': seal,
      'seal_alt': sealAlt,
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory HeroBuild.fromMap(Map<String, dynamic> map) {
    return HeroBuild(
      id: map['id'] as int?,
      hero: map['hero'] as String,
      boon: map['boon'] as String?,
      bane: map['bane'] as String?,
      weapon: map['weapon'] as String?,
      refState: map['ref_state'] as int,
      weaponAlt: map['weapon_alt'] as String?,
      assist: map['assist'] as String?,
      assistAlt: map['assist_alt'] as String?,
      special: map['special'] as String?,
      specialAlt: map['special_alt'] as String?,
      skillA: map['skill_a'] as String?,
      skillAAlt: map['skill_a_alt'] as String?,
      skillB: map['skill_b'] as String?,
      skillBAlt: map['skill_b_alt'] as String?,
      skillC: map['skill_c'] as String?,
      skillCAlt: map['skill_c_alt'] as String?,
      seal: map['seal'] as String?,
      sealAlt: map['seal_alt'] as String?,
    );
  }
}

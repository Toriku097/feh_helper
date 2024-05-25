class FeHero {
  int? id;
  String name;
  String title;
  int legendary;
  String? legendaryElement;
  String? legendaryBuff;
  bool playable;
  bool limited;
  bool dancer;
  bool duo;
  String? duoSkill;
  int duel;
  int minRarity;
  int maxRarity;
  String color;
  String moveType;
  String weaponType;
  String weapon;
  String? weaponBase;
  String? weaponExtra;
  String? assist;
  String? assistBase;
  String? special;
  String? specialBase;
  String? skillA;
  String? skillABase;
  int aUnlocked;
  String? skillB;
  String? skillBBase;
  int bUnlocked;
  String? skillC;
  String? skillCBase;
  int cUnlocked;
  String? passiveExtra;
  String? extraBase;
  String? extraSlot;
  int hp5;
  int atk5;
  int spd5;
  int def5;
  int res5;
  int hpGrowth;
  int atkGrowth;
  int spdGrowth;
  int defGrowth;
  int resGrowth;
  String? note;
  int newHero;
  int flowers;
  String imageIds;
  String? related;
  bool resplendent;
  String? resplendentImages;

  FeHero({
    this.id,
    required this.name,
    required this.title,
    this.legendary = 0,
    this.legendaryElement,
    this.legendaryBuff,
    this.playable = true,
    this.limited = false,
    this.dancer = false,
    this.duo = false,
    this.duoSkill,
    this.duel = 0,
    this.minRarity = 5,
    this.maxRarity = 5,
    required this.color,
    required this.moveType,
    required this.weaponType,
    required this.weapon,
    this.weaponBase,
    this.weaponExtra,
    this.assist,
    this.assistBase,
    this.special,
    this.specialBase,
    this.skillA,
    this.skillABase,
    this.aUnlocked = -1,
    this.skillB,
    this.skillBBase,
    this.bUnlocked = -1,
    this.skillC,
    this.skillCBase,
    this.cUnlocked = -1,
    this.passiveExtra,
    this.extraBase,
    this.extraSlot,
    this.hp5 = 15,
    this.atk5 = 10,
    this.spd5 = 10,
    this.def5 = 10,
    this.res5 = 10,
    this.hpGrowth = 50,
    this.atkGrowth = 50,
    this.spdGrowth = 50,
    this.defGrowth = 50,
    this.resGrowth = 50,
    this.note,
    this.newHero = 0,
    this.flowers = 5,
    this.imageIds = ' , , , ',
    this.related,
    this.resplendent = false,
    this.resplendentImages
  });

  factory FeHero.fromMap(Map<String, dynamic> map) {
    return FeHero(
      id: map['id'] as int?,
      name: map['name'] as String,
      title: map['title'] as String,
      legendary: map['legendary'] as int,
      legendaryElement: map['legendary_element'] as String?,
      legendaryBuff: map['legendary_buff'] as String?,
      playable: (map['playable'] as int) != 0,
      limited: (map['limited'] as int) != 0,
      dancer: (map['dancer'] as int) != 0,
      duo: (map['duo'] as int) != 0,
      duoSkill: map['duo_skill'] as String?,
      duel: map['duel'] as int,
      minRarity: map['min_rarity'] as int,
      maxRarity: map['max_rarity'] as int,
      color: map['color'] as String,
      moveType: map['move_type'] as String,
      weaponType: map['weapon_type'] as String,
      weapon: map['weapon'] as String,
      weaponBase: map['weapon_base'] as String?,
      weaponExtra: map['weapon_extra'] as String?,
      assist: map['assist'] as String?,
      assistBase: map['assist_base'] as String?,
      special: map['special'] as String?,
      specialBase: map['special_base'] as String?,
      skillA: map['passive_a'] as String?,
      skillABase: map['passive_a_base'] as String?,
      aUnlocked: map['a_unlocked'] as int,
      skillB: map['passive_b'] as String?,
      skillBBase: map['passive_b_base'] as String?,
      bUnlocked: map['b_unlocked'] as int,
      skillC: map['passive_c'] as String?,
      skillCBase: map['passive_c_base'] as String?,
      cUnlocked: map['c_unlocked'] as int,
      passiveExtra: map['passive_extra'] as String?,
      extraBase: map['extra_base'] as String?,
      extraSlot: map['extra_slot'] as String?,
      hp5: map['hp_5'] as int,
      atk5: map['atk_5'] as int,
      spd5: map['spd_5'] as int,
      def5: map['def_5'] as int,
      res5: map['res_5'] as int,
      hpGrowth: map['hp_growth'] as int,
      atkGrowth: map['atk_growth'] as int,
      spdGrowth: map['spd_growth'] as int,
      defGrowth: map['def_growth'] as int,
      resGrowth: map['res_growth'] as int,
      note: map['note'] as String?,
      newHero: map['new'] as int,
      flowers: map['flowers'] as int,
      imageIds: map['image_ids'] as String,
      related: map['related'] as String?,
      resplendent: (map['resplendent'] as int) != 0,
      resplendentImages: map['resplendent_images'] as String?
    );
  }
}

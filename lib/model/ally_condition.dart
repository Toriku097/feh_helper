class AllyCondition {
  int? id;
  String name;
  int numAlliesMet;
  String countType;
  int healthRequirement;
  String? moveType;
  String? weaponType;
  int totalBuff;
  int allyStatReq;
  String? allyStat;

  AllyCondition({
    this.id,
    required this.name,
    this.numAlliesMet = 1,
    this.countType = 'at_least',
    this.healthRequirement = 0,
    this.moveType,
    this.weaponType,
    this.totalBuff = 0,
    this.allyStatReq = 0,
    this.allyStat,
  });
}

class Special {
  int? id;
  String name;
  int cooldown;
  String effect;
  int spCost;
  int maxTier;
  int precombat;
  String type;
  String? specialEffects;
  int armorShred;
  int statDamage;
  String? basisStat;
  int damageHeal;
  int damageReduce;
  int activeRange;
  int miracle;
  int disableDeflect;
  int inheritable;
  String restrictions;
  String? predecessor1;
  String? predecessor2;

  Special({
    this.id,
    required this.name,
    required this.cooldown,
    required this.effect,
    required this.spCost,
    this.maxTier = 0,
    this.precombat = 0,
    this.type = 'none',
    this.specialEffects,
    this.armorShred = 0,
    this.statDamage = 0,
    this.basisStat,
    this.damageHeal = 0,
    this.damageReduce = 0,
    this.activeRange = 0,
    this.miracle = 0,
    this.disableDeflect = 0,
    this.inheritable = 1,
    this.restrictions = 'none|none',
    this.predecessor1,
    this.predecessor2,
  });

  factory Special.fromMap(Map<String, dynamic> map) {
    return Special(
      id: map['id'] as int?,
      name: map['name'] as String,
      cooldown: map['cooldown'] as int,
      effect: map['effect'] as String,
      spCost: map['sp_cost'] as int,
      maxTier: map['max_tier'] as int? ?? 0,
      precombat: map['precombat'] as int? ?? 0,
      type: map['type'] as String? ?? 'none',
      specialEffects: map['special_effects'] as String?,
      armorShred: map['armor_shred'] as int? ?? 0,
      statDamage: map['stat_damage'] as int? ?? 0,
      basisStat: map['basis_stat'] as String?,
      damageHeal: map['damage_heal'] as int? ?? 0,
      damageReduce: map['damage_reduce'] as int? ?? 0,
      activeRange: map['active_range'] as int? ?? 0,
      miracle: map['miracle'] as int? ?? 0,
      disableDeflect: map['disable_deflect'] as int? ?? 0,
      inheritable: map['inheritable'] as int? ?? 1,
      restrictions: map['restrictions'] as String? ?? 'none|none',
      predecessor1: map['predecessor_1'] as String?,
      predecessor2: map['predecessor_2'] as String?,
    );
  }
}

class Weapon {
  int? id;
  String name;
  int might;
  int range;
  String? effect;
  int spCost;
  int hp;
  int atk;
  int spd;
  int def;
  int res;
  int brave;
  int killer;
  int wodao;
  int blade;
  int raven;
  int cleaner;
  int triangleAdept;
  int dualRangeCounter;
  int wrath;
  int statDrain;
  String? effectiveAgainst;
  int effectiveWhen;
  String? baseEffects;
  String? refinedEffects;
  String? specialEffects;
  int refinable;
  int refMight;
  int refHp;
  int refAtk;
  int refSpd;
  int refDef;
  int refRes;
  String? refEffect;
  String? refSpecEff1;
  String? refSpecEff2;
  int refSpecHp;
  int refSpecAtk;
  int refSpecSpd;
  int refSpecDef;
  int refSpecRes;
  int refSp;
  int refCostAm;
  int refCostRs;
  int refCostDd;
  String? color;
  String type;
  int maxTier;
  int inheritable;
  int magicWeapon;
  String? affinity;
  int buffsAllies;
  String? buffTargets;
  int buffAtk;
  int buffSpd;
  int buffDef;
  int buffRes;
  int refBuffAtk;
  int refBuffSpd;
  int refBuffDef;
  int refBuffRes;
  int refSpecBuffAtk;
  int refSpecBuffSpd;
  int refSpecBuffDef;
  int refSpecBuffRes;
  String? predecessor1;
  String? predecessor2;
  String? evolutionTo;
  String? evolutionFrom;
  int evoSp;
  int evoCostAm;
  int evoCostRs;
  int evoCostDd;

  Weapon({
    this.id,
    required this.name,
    required this.might,
    required this.range,
    this.effect,
    this.spCost = 0,
    this.hp = 0,
    this.atk = 0,
    this.spd = 0,
    this.def = 0,
    this.res = 0,
    this.brave = 0,
    this.killer = 0,
    this.wodao = 0,
    this.blade = 0,
    this.raven = 0,
    this.cleaner = 0,
    this.triangleAdept = 0,
    this.dualRangeCounter = 0,
    this.wrath = 0,
    this.statDrain = 0,
    this.effectiveAgainst,
    this.effectiveWhen = 0,
    this.baseEffects,
    this.refinedEffects,
    this.specialEffects,
    this.refinable = 0,
    this.refMight = 0,
    this.refHp = 0,
    this.refAtk = 0,
    this.refSpd = 0,
    this.refDef = 0,
    this.refRes = 0,
    this.refEffect,
    this.refSpecEff1,
    this.refSpecEff2,
    this.refSpecHp = 0,
    this.refSpecAtk = 0,
    this.refSpecSpd = 0,
    this.refSpecDef = 0,
    this.refSpecRes = 0,
    this.refSp = 0,
    this.refCostAm = 0,
    this.refCostRs = 0,
    this.refCostDd = 0,
    this.color,
    required this.type,
    this.maxTier = 0,
    this.inheritable = 1,
    this.magicWeapon = 0,
    this.affinity,
    this.buffsAllies = 0,
    this.buffTargets,
    this.buffAtk = 0,
    this.buffSpd = 0,
    this.buffDef = 0,
    this.buffRes = 0,
    this.refBuffAtk = 0,
    this.refBuffSpd = 0,
    this.refBuffDef = 0,
    this.refBuffRes = 0,
    this.refSpecBuffAtk = 0,
    this.refSpecBuffSpd = 0,
    this.refSpecBuffDef = 0,
    this.refSpecBuffRes = 0,
    this.predecessor1,
    this.predecessor2,
    this.evolutionTo,
    this.evolutionFrom,
    this.evoSp = 0,
    this.evoCostAm = 0,
    this.evoCostRs = 0,
    this.evoCostDd = 0,
  });

  factory Weapon.fromMap(Map<String, dynamic> map) {
    return Weapon(
      id: map['id'] as int?,
      name: map['name'] as String,
      might: map['might'] as int,
      range: map['range'] as int,
      effect: map['effect'] as String?,
      spCost: map['sp_cost'] as int,
      hp: map['hp'] as int,
      atk: map['atk'] as int,
      spd: map['spd'] as int,
      def: map['def'] as int,
      res: map['res'] as int,
      brave: map['brave'] as int,
      killer: map['killer'] as int,
      wodao: map['wodao'] as int,
      blade: map['blade'] as int,
      raven: map['raven'] as int,
      cleaner: map['cleaner'] as int,
      triangleAdept: map['triangle_adept'] as int,
      dualRangeCounter: map['dual_range_counter'] as int,
      wrath: map['wrath'] as int,
      statDrain: map['stat_drain'] as int,
      effectiveAgainst: map['effective_against'] as String?,
      effectiveWhen: map['effective_when'] as int,
      baseEffects: map['base_effects'] as String?,
      refinedEffects: map['refined_effects'] as String?,
      specialEffects: map['special_effects'] as String?,
      refinable: map['refinable'] as int,
      refMight: map['ref_might'] as int,
      refHp: map['ref_hp'] as int,
      refAtk: map['ref_atk'] as int,
      refSpd: map['ref_spd'] as int,
      refDef: map['ref_def'] as int,
      refRes: map['ref_res'] as int,
      refEffect: map['ref_effect'] as String?,
      refSpecEff1: map['ref_spec_eff1'] as String?,
      refSpecEff2: map['ref_spec_eff2'] as String?,
      refSpecHp: map['ref_spec_hp'] as int,
      refSpecAtk: map['ref_spec_atk'] as int,
      refSpecSpd: map['ref_spec_spd'] as int,
      refSpecDef: map['ref_spec_def'] as int,
      refSpecRes: map['ref_spec_res'] as int,
      refSp: map['ref_sp'] as int,
      refCostAm: map['ref_cost_am'] as int,
      refCostRs: map['ref_cost_rs'] as int,
      refCostDd: map['ref_cost_dd'] as int,
      color: map['color'] as String?,
      type: map['type'] as String,
      maxTier: map['max_tier'] as int,
      inheritable: map['inheritable'] as int,
      magicWeapon: map['magic_weapon'] as int,
      affinity: map['affinity'] as String?,
      buffsAllies: map['buffs_allies'] as int,
      buffTargets: map['buff_targets'] as String?,
      buffAtk: map['buff_atk'] as int,
      buffSpd: map['buff_spd'] as int,
      buffDef: map['buff_def'] as int,
      buffRes: map['buff_res'] as int,
      refBuffAtk: map['ref_buff_atk'] as int,
      refBuffSpd: map['ref_buff_spd'] as int,
      refBuffDef: map['ref_buff_def'] as int,
      refBuffRes: map['ref_buff_res'] as int,
      refSpecBuffAtk: map['ref_spec_buff_atk'] as int,
      refSpecBuffSpd: map['ref_spec_buff_spd'] as int,
      refSpecBuffDef: map['ref_spec_buff_def'] as int,
      refSpecBuffRes: map['ref_spec_buff_res'] as int,
      predecessor1: map['predecessor1'] as String?,
      predecessor2: map['predecessor2'] as String?,
      evolutionTo: map['evolution_to'] as String?,
      evolutionFrom: map['evolution_from'] as String?,
      evoSp: map['evo_sp'] as int,
      evoCostAm: map['evo_cost_am'] as int,
      evoCostRs: map['evo_cost_rs'] as int,
      evoCostDd: map['evo_cost_dd'] as int,
    );
  }
}

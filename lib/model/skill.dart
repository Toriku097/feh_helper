class Skill {
  int? id;
  String name;
  String effect;
  int spCost;
  int hp;
  int atk;
  int spd;
  int def;
  int res;
  int inheritable;
  String restrictions;
  int maxTier;
  String slot;
  int seal;
  int sealCost;
  String? sealColor;
  int preBuff;
  int preDebuff;
  int preAtk;
  int preSpd;
  int preDef;
  int preRes;
  int preSpecialBuff;
  int preSpecialDebuff;
  int triangleAdept;
  int dualRangeCounter;
  int killer;
  int brave;
  String? skillEffects;
  int onInitiation;
  int healthRequirementsAtStart;
  int healthRequirement;
  int opponentHealthReq;
  String? opponentStat;
  int opponentStatRequirement;
  int opponentCanRetaliate;
  String? effectiveAgainst;
  String? neutralizes;
  String? neutralizedStats;
  int effectiveRange;
  int activeTurns;
  int adjacentAllies;
  int nearbyAllies;
  String? nearbyAllyTypes;
  int firstCombat;
  int combat;
  int combatAtk;
  int combatSpd;
  int combatDef;
  int combatRes;
  String? arStats;
  int sessionType;
  String? invertField;
  int acceleratesSpecial;
  int attackPriority;
  int autoFollowUp;
  int preventFollowUp;
  int preventRetaliation;
  int deflectType;
  int deflectAmt;
  int postMatchRequirements;
  int postWhenAttacked;
  int postDamage;
  int postAtk;
  int postSpd;
  int postDef;
  int postRes;
  int postSpecialDebuff;
  int buffsAllies;
  String? buffTargets;
  int buffAtk;
  int buffSpd;
  int buffDef;
  int buffRes;
  int duel;
  String? predecessor1;
  String? predecessor2;

  Skill({
    this.id,
    required this.name,
    required this.effect,
    required this.spCost,
    this.hp = 0,
    this.atk = 0,
    this.spd = 0,
    this.def = 0,
    this.res = 0,
    this.inheritable = 1,
    this.restrictions = 'none|none',
    this.maxTier = 0,
    required this.slot,
    this.seal = 0,
    this.sealCost = -1,
    this.sealColor,
    this.preBuff = 0,
    this.preDebuff = 0,
    this.preAtk = 0,
    this.preSpd = 0,
    this.preDef = 0,
    this.preRes = 0,
    this.preSpecialBuff = 0,
    this.preSpecialDebuff = 0,
    this.triangleAdept = 0,
    this.dualRangeCounter = 0,
    this.killer = 0,
    this.brave = 0,
    this.skillEffects,
    this.onInitiation = 0,
    this.healthRequirementsAtStart = 1,
    this.healthRequirement = 0,
    this.opponentHealthReq = 0,
    this.opponentStat,
    this.opponentStatRequirement = 0,
    this.opponentCanRetaliate = 0,
    this.effectiveAgainst,
    this.neutralizes,
    this.neutralizedStats,
    this.effectiveRange = 0,
    this.activeTurns = 0,
    this.adjacentAllies = 0,
    this.nearbyAllies = 0,
    this.nearbyAllyTypes,
    this.firstCombat = 0,
    this.combat = 0,
    this.combatAtk = 0,
    this.combatSpd = 0,
    this.combatDef = 0,
    this.combatRes = 0,
    this.arStats,
    this.sessionType = 0,
    this.invertField,
    this.acceleratesSpecial = 0,
    this.attackPriority = 0,
    this.autoFollowUp = 0,
    this.preventFollowUp = 0,
    this.preventRetaliation = 0,
    this.deflectType = 0,
    this.deflectAmt = 0,
    this.postMatchRequirements = 0,
    this.postWhenAttacked = 0,
    this.postDamage = 0,
    this.postAtk = 0,
    this.postSpd = 0,
    this.postDef = 0,
    this.postRes = 0,
    this.postSpecialDebuff = 0,
    this.buffsAllies = 0,
    this.buffTargets,
    this.buffAtk = 0,
    this.buffSpd = 0,
    this.buffDef = 0,
    this.buffRes = 0,
    this.duel = 0,
    this.predecessor1,
    this.predecessor2,
  });

  factory Skill.fromMap(Map<String, dynamic> map) {
    return Skill(
      id: map['id'] as int?,
      name: map['name'] as String,
      effect: map['effect'] as String,
      spCost: map['sp_cost'] as int,
      hp: map['hp'] as int,
      atk: map['atk'] as int,
      spd: map['spd'] as int,
      def: map['def'] as int,
      res: map['res'] as int,
      inheritable: map['inheritable'] as int,
      restrictions: map['restrictions'] as String,
      maxTier: map['max_tier'] as int,
      slot: map['slot'] as String,
      seal: map['seal'] as int,
      sealCost: map['seal_cost'] as int,
      sealColor: map['seal_color'] as String?,
      preBuff: map['pre_buff'] as int,
      preDebuff: map['pre_debuff'] as int,
      preAtk: map['pre_atk'] as int,
      preSpd: map['pre_spd'] as int,
      preDef: map['pre_def'] as int,
      preRes: map['pre_res'] as int,
      preSpecialBuff: map['pre_special_buff'] as int,
      preSpecialDebuff: map['pre_special_debuff'] as int,
      triangleAdept: map['triangle_adept'] as int,
      dualRangeCounter: map['dual_range_counter'] as int,
      killer: map['killer'] as int,
      brave: map['brave'] as int,
      skillEffects: map['skill_effects'] as String?,
      onInitiation: map['on_initiation'] as int,
      healthRequirementsAtStart: map['health_requirements_at_start'] as int,
      healthRequirement: map['health_requirement'] as int,
      opponentHealthReq: map['opponent_health_req'] as int,
      opponentStat: map['opponent_stat'] as String?,
      opponentStatRequirement: map['opponent_stat_requirement'] as int,
      opponentCanRetaliate: map['opponent_can_retaliate'] as int,
      effectiveAgainst: map['effective_against'] as String?,
      neutralizes: map['neutralizes'] as String?,
      neutralizedStats: map['neutralized_stats'] as String?,
      effectiveRange: map['effective_range'] as int,
      activeTurns: map['active_turns'] as int,
      adjacentAllies: map['adjacent_allies'] as int,
      nearbyAllies: map['nearby_allies'] as int,
      nearbyAllyTypes: map['nearby_ally_types'] as String?,
      firstCombat: map['first_combat'] as int,
      combat: map['combat'] as int,
      combatAtk: map['combat_atk'] as int,
      combatSpd: map['combat_spd'] as int,
      combatDef: map['combat_def'] as int,
      combatRes: map['combat_res'] as int,
      arStats: map['ar_stats'] as String?,
      sessionType: map['session_type'] as int,
      invertField: map['invert_field'] as String?,
      acceleratesSpecial: map['accelerates_special'] as int,
      attackPriority: map['attack_priority'] as int,
      autoFollowUp: map['auto_follow_up'] as int,
      preventFollowUp: map['prevent_follow_up'] as int,
      preventRetaliation: map['prevent_retaliation'] as int,
      deflectType: map['deflect_type'] as int,
      deflectAmt: map['deflect_amt'] as int,
      postMatchRequirements: map['post_match_requirements'] as int,
      postWhenAttacked: map['post_when_attacked'] as int,
      postDamage: map['post_damage'] as int,
      postAtk: map['post_atk'] as int,
      postSpd: map['post_spd'] as int,
      postDef: map['post_def'] as int,
      postRes: map['post_res'] as int,
      postSpecialDebuff: map['post_special_debuff'] as int,
      buffsAllies: map['buffs_allies'] as int,
      buffTargets: map['buff_targets'] as String?,
      buffAtk: map['buff_atk'] as int,
      buffSpd: map['buff_spd'] as int,
      buffDef: map['buff_def'] as int,
      buffRes: map['buff_res'] as int,
      duel: map['duel'] as int,
      predecessor1: map['predecessor1'] as String?,
      predecessor2: map['predecessor2'] as String?,
    );
  }
}

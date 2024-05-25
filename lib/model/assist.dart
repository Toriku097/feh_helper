class Assist {
  int? id;
  String name;
  int range;
  String effect;
  int spCost;
  int heal;
  int dance;
  int inheritable;
  String? predecessor1;
  String? predecessor2;

  Assist({
    this.id,
    required this.name,
    this.range = 1,
    required this.effect,
    required this.spCost,
    this.heal = 0,
    this.dance = 0,
    this.inheritable = 1,
    this.predecessor1,
    this.predecessor2,
  });

  factory Assist.fromMap(Map<String, dynamic> map) {
    return Assist(
      id: map['id'] as int?,
      name: map['name'] as String,
      range: map['range'] as int,
      effect: map['effect'] as String,
      spCost: map['sp_cost'] as int,
      heal: map['heal'] as int,
      dance: map['dance'] as int,
      inheritable: map['inheritable'] as int,
      predecessor1: map['predecessor1'] as String?,
      predecessor2: map['predecessor2'] as String?,
    );
  }
}

class ActiveEffect {
  int? id;
  String name;
  String description;
  int turnDuration;
  int? hpChange;
  int? atkChange;
  int? spdChange;
  int? defChange;
  int? resChange;
  String? debuffEffect;
  String? specialTriggerEffect;
  String? specialDurationEffect;
  String? additionalEffect;

  ActiveEffect({
    this.id,
    required this.name,
    required this.description,
    required this.turnDuration,
    this.hpChange,
    this.atkChange,
    this.spdChange,
    this.defChange,
    this.resChange,
    this.debuffEffect,
    this.specialTriggerEffect,
    this.specialDurationEffect,
    this.additionalEffect,
  });
}

class IPokemonBase {
  const IPokemonBase({
    required this.attack,
    required this.defense,
    required this.hp,
    required this.spAtk,
    required this.spDef,
    required this.speed,
  });
  final int attack;
  final int defense;
  final int hp;
  final int spAtk;
  final int spDef;
  final int speed;
}

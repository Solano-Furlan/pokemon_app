class IPokemonSkills {
  const IPokemonSkills({
    required this.eggs,
    required this.levelUp,
    required this.tm,
    required this.transfer,
  });

  final List<int> eggs;
  final List<int> levelUp;
  final List<int> tm;
  final List<int> transfer;
}

class IPokemonSkills {
  const IPokemonSkills({
    required this.eggs,
    required this.levelUp,
    required this.tm,
    required this.transfer,
    required this.preEvolution,
    required this.tutor,
  });

  final List<int> eggs;
  final List<int> levelUp;
  final List<int> tm;
  final List<int> transfer;
  final List<int> preEvolution;
  final List<int> tutor;
}

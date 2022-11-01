import 'package:pokemon_app/features/selected_pokemon/domain/pokemon_base.interface.dart';

class PokemonBaseNormalizer {
  PokemonBaseNormalizer._();

  static IPokemonBase normalizeRawData({
    required Map<String, dynamic> jsonData,
  }) =>
      IPokemonBase(
        attack: jsonData['Attack'] as int,
        defense: jsonData['Defense'] as int,
        hp: jsonData['HP'] as int,
        spAtk: jsonData['Sp.Atk'] as int,
        spDef: jsonData['Sp.Def'] as int,
        speed: jsonData['Speed'] as int,
      );
}

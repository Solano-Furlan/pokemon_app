import 'package:pokemon_app/features/selected_pokemon/domain/pokemon_skills.interface.dart';

class PokemonSkillsNormalizer {
  PokemonSkillsNormalizer._();

  static IPokemonSkills normalizeRawData({
    required Map<String, dynamic> jsonData,
  }) =>
      IPokemonSkills(
        eggs: jsonData['egg'] == null
            ? []
            : (jsonData['egg'] as List).map((e) => e as int).toList(),
        levelUp: jsonData['level_up'] == null
            ? []
            : (jsonData['level_up'] as List).map((e) => e as int).toList(),
        tm: jsonData['tm'] == null
            ? []
            : (jsonData['tm'] as List).map((e) => e as int).toList(),
        transfer: jsonData['transfer'] == null
            ? []
            : (jsonData['transfer'] as List).map((e) => e as int).toList(),
        preEvolution: jsonData['re-evolution'] == null
            ? []
            : (jsonData['re-evolution'] as List).map((e) => e as int).toList(),
        tutor: jsonData['tutor'] == null
            ? []
            : (jsonData['tutor'] as List).map((e) => e as int).toList(),
      );
}

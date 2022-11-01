import 'dart:convert';
import 'dart:developer';

import 'package:pokemon_app/features/selected_pokemon/data/normalizers/pokemon_base.normalizer.dart';
import 'package:pokemon_app/features/selected_pokemon/data/normalizers/pokemon_skills.normalizer.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon.interface.dart';

class SelectedPokemonNormalizer {
  SelectedPokemonNormalizer._();

  static ISelectedPokemon normalizeRawData({
    required Map<String, dynamic> jsonData,
  }) =>
      ISelectedPokemon(
        id: (jsonData['id'] as int).toString(),
        name: jsonData['jname'] as String,
        ename: jsonData['jname'] as String,
        cname: jsonData['jname'] as String,
        jname: jsonData['jname'] as String,
        pictureUrl: jsonData['picture'] as String,
        type: (jsonData['type'] as List).map((e) => e as String).toList(),
        base: PokemonBaseNormalizer.normalizeRawData(
          jsonData: jsonData['base'],
        ),
        skills: PokemonSkillsNormalizer.normalizeRawData(
          jsonData: jsonData['skills'],
        ),
      );
}

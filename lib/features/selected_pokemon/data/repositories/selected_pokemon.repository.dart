import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pokemon_app/features/selected_pokemon/data/normalizers/selected_pokemon.normalizer.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon.interface.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon_repository.interface.dart';

class SelectedPokemonRepository extends ISelectedPokemonRepository {
  SelectedPokemonRepository({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<ISelectedPokemon> getPokemonById({required String id}) async {
    final res = await dio.get('pokemon/$id');

    return SelectedPokemonNormalizer.normalizeRawData(
      jsonData: res.data,
    );
  }
}

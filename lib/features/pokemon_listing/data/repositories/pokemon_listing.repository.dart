import 'package:dio/dio.dart';
import 'package:pokemon_app/features/pokemon_listing/data/normalizers/preview_pokemon.normalizer.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/pokemon_listing_repository.interface.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/preview_pokemon.interface.dart';

class PokemonListingRepository extends IPokemonListingRepository {
  PokemonListingRepository({
    required this.dio,
  });

  final Dio dio;
  @override
  Future<List<IPreviewPokemon>> getPokemonPreviews() async {
    final List<IPreviewPokemon> pokemons = [];
    final res = await dio.get('pokemon');
    for (final rawPokemon in res.data) {
      pokemons.add(
        PreviewPokemonNormalizer.normalizeRawData(
          jsonData: rawPokemon,
        ),
      );
    }

    return pokemons;
  }
}

import 'package:dio/dio.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/pokemon_listing_repository.interface.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/preview_pokemon.interface.dart';

class PokemonListingRepository extends IPokemonListingRepository {
  PokemonListingRepository({
    required this.dio,
  });

  final Dio dio;
  @override
  Future<List<IPreviewPokemon>> getPokemonPreviews() {
    // TODO: implement getPokemonPreviews
    throw UnimplementedError();
  }
}

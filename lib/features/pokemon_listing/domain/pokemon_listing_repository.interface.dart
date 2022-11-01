import 'preview_pokemon.interface.dart';

abstract class IPokemonListingRepository {
  Future<List<IPreviewPokemon>> getPokemonPreviews();
}

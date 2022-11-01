import 'package:pokemon_app/features/pokemon_listing/domain/preview_pokemon.interface.dart';

class PreviewPokemonNormalizer {
  PreviewPokemonNormalizer._();

  static IPreviewPokemon normalizeRawData({
    required Map<String, dynamic> jsonData,
  }) =>
      IPreviewPokemon(
        id: (jsonData['id'] as int).toString(),
        name: jsonData['name'] as String,
        imageUrl: jsonData['picture'] as String,
      );
}

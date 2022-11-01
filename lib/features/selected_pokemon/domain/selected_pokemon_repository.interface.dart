import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon.interface.dart';

abstract class ISelectedPokemonRepository {
  Future<ISelectedPokemon> getPokemonById({
    required String id,
  });
}

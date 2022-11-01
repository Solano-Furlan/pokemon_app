import 'package:pokemon_app/features/pokemon_listing/domain/preview_pokemon.interface.dart';

abstract class PokemonListingState {}

class PokemonListingLoadingState extends PokemonListingState {}

class PokemonListingLoadedState extends PokemonListingState {
  PokemonListingLoadedState({
    required this.allPokemons,
  });

  final List<IPreviewPokemon> allPokemons;
}

class PokemonListingErrorState extends PokemonListingState {
  PokemonListingErrorState({
    this.errorMessage,
  });
  final String? errorMessage;
}

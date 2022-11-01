import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon.interface.dart';

abstract class SelectedPokemonState {}

class SelectedPokemonLoadingState extends SelectedPokemonState {}

class SelectedPokemonLoadedState extends SelectedPokemonState {
  SelectedPokemonLoadedState({
    required this.selectedPokemon,
  });
  final ISelectedPokemon selectedPokemon;
}

class SelectedPokemonErrorState extends SelectedPokemonState {
  SelectedPokemonErrorState({
    this.errorMessage,
  });
  final String? errorMessage;
}

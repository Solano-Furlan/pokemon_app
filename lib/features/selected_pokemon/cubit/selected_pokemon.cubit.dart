import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/features/selected_pokemon/cubit/selected_pokemon.state.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon_repository.interface.dart';

class SelectedPokemonCubit extends Cubit<SelectedPokemonState> {
  SelectedPokemonCubit({
    required this.selectedPokemonRepository,
  }) : super(SelectedPokemonLoadingState());
  final ISelectedPokemonRepository selectedPokemonRepository;

  Future<void> getSelectedPokemon({
    required String id,
  }) async {
    emit(SelectedPokemonLoadingState());
    try {
      final selectedPokemon = await selectedPokemonRepository.getPokemonById(
        id: id,
      );
      emit(
        SelectedPokemonLoadedState(
          selectedPokemon: selectedPokemon,
        ),
      );
    } on Exception catch (_) {
      emit(SelectedPokemonErrorState());
    }
  }
}

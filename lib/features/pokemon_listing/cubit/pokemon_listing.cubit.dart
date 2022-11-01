import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/features/pokemon_listing/cubit/pokemon_listing.state.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/pokemon_listing_repository.interface.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/preview_pokemon.interface.dart';

class PokemonListingCubit extends Cubit<PokemonListingState> {
  PokemonListingCubit({
    required this.pokemonListingRepository,
  }) : super(PokemonListingLoadingState());

  final IPokemonListingRepository pokemonListingRepository;

  Future<void> initialize() async {
    emit(PokemonListingLoadingState());
    try {
      final List<IPreviewPokemon> allPokemons =
          await pokemonListingRepository.getPokemonPreviews();

      emit(
        PokemonListingLoadedState(
          allPokemons: allPokemons,
        ),
      );
    } on Exception catch (_) {
      emit(PokemonListingErrorState());
    }
  }
}

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/features/pokemon_listing/data/repositories/pokemon_listing.repository.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/pokemon_listing_repository.interface.dart';
import 'package:pokemon_app/features/selected_pokemon/data/repositories/selected_pokemon.repository.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon_repository.interface.dart';

@module
abstract class BackendModule {
  @preResolve
  @singleton
  Future<Dio> dio() async {
    final Dio dio = Dio();
    dio.options.baseUrl = 'http://pokemon.test.dormzi.com/';
    dio.options.headers['Content-Type'] = 'application/json';

    return dio;
  }

  @lazySingleton
  IPokemonListingRepository pokemonListingRepository(Dio dio) =>
      PokemonListingRepository(
        dio: dio,
      );

  @lazySingleton
  ISelectedPokemonRepository selectedPokemonRepository(Dio dio) =>
      SelectedPokemonRepository(
        dio: dio,
      );
}

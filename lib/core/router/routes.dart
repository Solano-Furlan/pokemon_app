import 'package:auto_route/auto_route.dart';
import 'package:pokemon_app/features/pokemon_listing/presentation/pokemon_listing.screen.dart';
import 'package:pokemon_app/features/selected_pokemon/presentation/selected_pokemon.screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/pokemon-listing',
      page: PokemonListingScreen,
      initial: true,
    ),
    AutoRoute(
      path: '/selected-pokemon/:id',
      page: SelectedPokemonScreen,
    ),
  ],
)
class $AppRouter {}

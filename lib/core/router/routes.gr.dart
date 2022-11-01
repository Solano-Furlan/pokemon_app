// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/pokemon_listing/presentation/pokemon_listing.screen.dart'
    as _i1;
import '../../features/selected_pokemon/presentation/selected_pokemon.screen.dart'
    as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    PokemonListingScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PokemonListingScreen(),
      );
    },
    SelectedPokemonScreen.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SelectedPokemonScreenArgs>(
          orElse: () =>
              SelectedPokemonScreenArgs(id: pathParams.getString('id')));
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SelectedPokemonScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/pokemon-listing',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          PokemonListingScreen.name,
          path: '/pokemon-listing',
        ),
        _i3.RouteConfig(
          SelectedPokemonScreen.name,
          path: '/selected-pokemon/:id',
        ),
      ];
}

/// generated route for
/// [_i1.PokemonListingScreen]
class PokemonListingScreen extends _i3.PageRouteInfo<void> {
  const PokemonListingScreen()
      : super(
          PokemonListingScreen.name,
          path: '/pokemon-listing',
        );

  static const String name = 'PokemonListingScreen';
}

/// generated route for
/// [_i2.SelectedPokemonScreen]
class SelectedPokemonScreen
    extends _i3.PageRouteInfo<SelectedPokemonScreenArgs> {
  SelectedPokemonScreen({
    required String id,
    _i4.Key? key,
  }) : super(
          SelectedPokemonScreen.name,
          path: '/selected-pokemon/:id',
          args: SelectedPokemonScreenArgs(
            id: id,
            key: key,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'SelectedPokemonScreen';
}

class SelectedPokemonScreenArgs {
  const SelectedPokemonScreenArgs({
    required this.id,
    this.key,
  });

  final String id;

  final _i4.Key? key;

  @override
  String toString() {
    return 'SelectedPokemonScreenArgs{id: $id, key: $key}';
  }
}

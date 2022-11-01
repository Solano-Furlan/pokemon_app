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
    PokemonListingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PokemonListingScreen(),
      );
    },
    SelectedPokemonRoute.name: (routeData) {
      final args = routeData.argsAs<SelectedPokemonRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SelectedPokemonScreen(
          id: args.id,
          name: args.name,
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
          PokemonListingRoute.name,
          path: '/pokemon-listing',
        ),
        _i3.RouteConfig(
          SelectedPokemonRoute.name,
          path: '/selected-pokemon/:name',
        ),
      ];
}

/// generated route for
/// [_i1.PokemonListingScreen]
class PokemonListingRoute extends _i3.PageRouteInfo<void> {
  const PokemonListingRoute()
      : super(
          PokemonListingRoute.name,
          path: '/pokemon-listing',
        );

  static const String name = 'PokemonListingRoute';
}

/// generated route for
/// [_i2.SelectedPokemonScreen]
class SelectedPokemonRoute extends _i3.PageRouteInfo<SelectedPokemonRouteArgs> {
  SelectedPokemonRoute({
    required String id,
    required String name,
    _i4.Key? key,
  }) : super(
          SelectedPokemonRoute.name,
          path: '/selected-pokemon/:name',
          args: SelectedPokemonRouteArgs(
            id: id,
            name: name,
            key: key,
          ),
          rawPathParams: {'name': name},
        );

  static const String name = 'SelectedPokemonRoute';
}

class SelectedPokemonRouteArgs {
  const SelectedPokemonRouteArgs({
    required this.id,
    required this.name,
    this.key,
  });

  final String id;

  final String name;

  final _i4.Key? key;

  @override
  String toString() {
    return 'SelectedPokemonRouteArgs{id: $id, name: $name, key: $key}';
  }
}

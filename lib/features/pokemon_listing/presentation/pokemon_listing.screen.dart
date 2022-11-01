import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/core/dependencies/dependencies.dart';
import 'package:pokemon_app/features/pokemon_listing/cubit/pokemon_listing.cubit.dart';
import 'package:pokemon_app/features/pokemon_listing/domain/pokemon_listing_repository.interface.dart';
import 'package:pokemon_app/features/pokemon_listing/presentation/pokemon_listing.layout.dart';

class PokemonListingScreen extends StatelessWidget {
  const PokemonListingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonListingCubit(
        pokemonListingRepository: getIt<IPokemonListingRepository>(),
      )..initialize(),
      child: const PokemonListingLayout(),
    );
  }
}

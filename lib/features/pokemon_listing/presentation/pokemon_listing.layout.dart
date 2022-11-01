import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/features/pokemon_listing/cubit/pokemon_listing.cubit.dart';
import 'package:pokemon_app/features/pokemon_listing/cubit/pokemon_listing.state.dart';

import 'widgets/pokemon_card.widget.dart';

class PokemonListingLayout extends StatelessWidget {
  const PokemonListingLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Listing'),
      ),
      body: BlocBuilder<PokemonListingCubit, PokemonListingState>(
        builder: (context, state) {
          if (state is PokemonListingErrorState) {
            return TextButton(
              onPressed: () => context.read<PokemonListingCubit>().initialize(),
              child: const Text('Something went wrong, please try again.'),
            );
          }
          if (state is PokemonListingLoadedState) {
            return GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (deviceWidth < 400)
                    ? 1
                    : (deviceWidth < 600)
                        ? 2
                        : 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 400,
              ),
              itemCount: state.allPokemons.length,
              itemBuilder: (context, index) {
                return PokemonCard(
                  pokemon: state.allPokemons[index],
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

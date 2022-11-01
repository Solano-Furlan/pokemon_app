import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/features/selected_pokemon/cubit/selected_pokemon.cubit.dart';
import 'package:pokemon_app/features/selected_pokemon/cubit/selected_pokemon.state.dart';

class SelectedPokemonLayout extends StatelessWidget {
  const SelectedPokemonLayout({
    required this.name,
    required this.id,
    super.key,
  });

  final String name;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: BlocBuilder<SelectedPokemonCubit, SelectedPokemonState>(
        builder: (context, state) {
          if (state is SelectedPokemonErrorState) {
            return TextButton(
              onPressed: () => context
                  .read<SelectedPokemonCubit>()
                  .getSelectedPokemon(id: id),
              child: const Text('Something went wrong, please try again.'),
            );
          }
          if (state is SelectedPokemonLoadedState) {
            return const SizedBox();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

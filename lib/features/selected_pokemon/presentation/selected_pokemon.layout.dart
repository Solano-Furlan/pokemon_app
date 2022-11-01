import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/features/selected_pokemon/cubit/selected_pokemon.cubit.dart';
import 'package:pokemon_app/features/selected_pokemon/cubit/selected_pokemon.state.dart';
import 'package:pokemon_app/features/selected_pokemon/presentation/widgets/header.widget.dart';
import 'package:pokemon_app/features/selected_pokemon/presentation/widgets/section_info.widget.dart';

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
            return Center(
              child: ElevatedButton(
                onPressed: () => context
                    .read<SelectedPokemonCubit>()
                    .getSelectedPokemon(id: id),
                child: const Text(
                  'Something went wrong, please try again.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }
          if (state is SelectedPokemonLoadedState) {
            return ListView(
              padding: const EdgeInsets.all(20),
              children: [
                SelectedPokemonHeader(
                  pokemon: state.selectedPokemon,
                ),
                const SizedBox(height: 40),
                if (state.selectedPokemon.skills.eggs.isNotEmpty) ...[
                  SectionInfo(
                    label: 'Eggs',
                    values: state.selectedPokemon.skills.eggs,
                  ),
                  const Divider(),
                ],
                if (state.selectedPokemon.skills.levelUp.isNotEmpty) ...[
                  SectionInfo(
                    label: 'Level Up',
                    values: state.selectedPokemon.skills.levelUp,
                  ),
                  const Divider(),
                ],
                if (state.selectedPokemon.skills.preEvolution.isNotEmpty) ...[
                  SectionInfo(
                    label: 'Pre Evolution',
                    values: state.selectedPokemon.skills.preEvolution,
                  ),
                  const Divider(),
                ],
                if (state.selectedPokemon.skills.tm.isNotEmpty) ...[
                  SectionInfo(
                    label: 'TM',
                    values: state.selectedPokemon.skills.tm,
                  ),
                  const Divider(),
                ],
                if (state.selectedPokemon.skills.transfer.isNotEmpty) ...[
                  SectionInfo(
                    label: 'Transformer',
                    values: state.selectedPokemon.skills.transfer,
                  ),
                  const Divider(),
                ],
                if (state.selectedPokemon.skills.tutor.isNotEmpty) ...[
                  SectionInfo(
                    label: 'Tutor',
                    values: state.selectedPokemon.skills.tutor,
                  ),
                ],
              ],
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

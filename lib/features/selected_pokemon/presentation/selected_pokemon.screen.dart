import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/core/dependencies/dependencies.dart';
import 'package:pokemon_app/features/selected_pokemon/cubit/selected_pokemon.cubit.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon_repository.interface.dart';
import 'package:pokemon_app/features/selected_pokemon/presentation/selected_pokemon.layout.dart';

class SelectedPokemonScreen extends StatelessWidget {
  const SelectedPokemonScreen({
    required this.id,
    @PathParam('name') required this.name,
    super.key,
  });

  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectedPokemonCubit(
        selectedPokemonRepository: getIt<ISelectedPokemonRepository>(),
      )..getSelectedPokemon(id: id),
      child: SelectedPokemonLayout(
        id: id,
        name: name,
      ),
    );
  }
}

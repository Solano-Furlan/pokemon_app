import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon.interface.dart';
import 'package:pokemon_app/features/selected_pokemon/presentation/widgets/pokemon_badge.widget.dart';
import 'package:pokemon_app/features/selected_pokemon/presentation/widgets/pokemon_translation.widget.dart';

class SelectedPokemonHeader extends StatelessWidget {
  const SelectedPokemonHeader({
    required this.pokemon,
    super.key,
  });

  final ISelectedPokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 350,
              width: 350,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              padding: const EdgeInsets.all(12),
              child: Image.network(
                pokemon.pictureUrl,
              ),
            ),
          ],
        ),
        const SizedBox(width: 40),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'AKA:',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 35,
                runSpacing: 35,
                children: <Widget>[
                  PokemonTranslation(
                    translation: pokemon.ename,
                    flagCode: FlagsCode.US,
                  ),
                  PokemonTranslation(
                    translation: pokemon.jname,
                    flagCode: FlagsCode.JP,
                  ),
                  PokemonTranslation(
                    translation: pokemon.cname,
                    flagCode: FlagsCode.CN,
                  ),
                ],
              ),
              const SizedBox(height: 35),
              const Text(
                'BASE:',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 35,
                runSpacing: 35,
                children: [
                  PokemonBadge(
                    label: 'Attack',
                    value: pokemon.base.attack,
                  ),
                  PokemonBadge(
                    label: 'Defense',
                    value: pokemon.base.defense,
                  ),
                  PokemonBadge(
                    label: 'HP',
                    value: pokemon.base.hp,
                  ),
                  PokemonBadge(
                    label: 'Sp Atk',
                    value: pokemon.base.spAtk,
                  ),
                  PokemonBadge(
                    label: 'Sp Def',
                    value: pokemon.base.spDef,
                  ),
                  PokemonBadge(
                    label: 'Speed',
                    value: pokemon.base.speed,
                  ),
                ],
              ),
              const SizedBox(height: 35),
              RichText(
                text: TextSpan(
                  text: 'Type: ',
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: _getTypeText(
                        type: pokemon.type,
                      ),
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  String _getTypeText({required List<String> type}) => type.join(", ");
}

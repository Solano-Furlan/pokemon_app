import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';

class PokemonTranslation extends StatelessWidget {
  const PokemonTranslation({
    required this.translation,
    required this.flagCode,
    super.key,
  });
  final String translation;
  final FlagsCode flagCode;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.black,
            ),
          ),
          clipBehavior: Clip.hardEdge,
          child: Flag.fromCode(
            flagCode,
            fit: BoxFit.cover,
            borderRadius: 100,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          translation,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

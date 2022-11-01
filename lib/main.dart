import 'package:flutter/material.dart';
import 'package:pokemon_app/app.widget.dart';
import 'package:pokemon_app/core/dependencies/dependencies.dart';

Future<void> main() async {
  await setupDependencies();
  runApp(const PokemonApp());
}

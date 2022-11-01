import 'package:flutter/material.dart';

class PokemonListingScreen extends StatelessWidget {
  const PokemonListingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Listing'),
      ),
    );
  }
}

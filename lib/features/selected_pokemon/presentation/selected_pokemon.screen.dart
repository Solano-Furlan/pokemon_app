import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class SelectedPokemonScreen extends StatelessWidget {
  const SelectedPokemonScreen({
    @PathParam('id') required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Selected Pokemon',
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'core/router/routes.gr.dart';

class PokemonApp extends StatelessWidget {
  const PokemonApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: AppRouter().delegate(),
      routeInformationParser: AppRouter().defaultRouteParser(),
    );
  }
}

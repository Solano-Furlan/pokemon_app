import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/core/router/routes.gr.dart';

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey(debugLabel: 'Main Navigator');

@module
abstract class NavigationModule {
  @lazySingleton
  AppRouter appRouter() => AppRouter(navigatorKey);
}

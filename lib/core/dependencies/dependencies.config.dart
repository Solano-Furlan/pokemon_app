// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes, depend_on_referenced_packages
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokemon_app/core/dependencies/modules/backend.module.dart'
    as _i8;
import 'package:pokemon_app/core/dependencies/modules/router.module.dart'
    as _i7;
import 'package:pokemon_app/core/router/routes.gr.dart' as _i3;
import 'package:pokemon_app/features/pokemon_listing/domain/pokemon_listing_repository.interface.dart'
    as _i5;
import 'package:pokemon_app/features/selected_pokemon/domain/selected_pokemon_repository.interface.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final navigationModule = _$NavigationModule();
  final backendModule = _$BackendModule();
  gh.lazySingleton<_i3.AppRouter>(() => navigationModule.appRouter());
  await gh.singletonAsync<_i4.Dio>(
    () => backendModule.dio(),
    preResolve: true,
  );
  gh.lazySingleton<_i5.IPokemonListingRepository>(
      () => backendModule.pokemonListingRepository(get<_i4.Dio>()));
  gh.lazySingleton<_i6.ISelectedPokemonRepository>(
      () => backendModule.selectedPokemonRepository(get<_i4.Dio>()));
  return get;
}

class _$NavigationModule extends _i7.NavigationModule {}

class _$BackendModule extends _i8.BackendModule {}

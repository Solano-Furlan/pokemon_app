import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'dependencies.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
  usesNullSafety: true,
)
Future<void> setupDependencies() async => $initGetIt(getIt);

import 'package:get_it/get_it.dart';
import 'package:greg_sausage_roll/service_locator_injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async => getIt.init(
      environment: Environment.prod,
    );

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/config/dependency_injection/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
GetIt configureDependencies() => getIt.init();

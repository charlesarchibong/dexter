import 'package:dexter_health/core/sl/sl.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// This is the root of the dependency injection tree.
GetIt sl = GetIt.instance;

@injectableInit

/// this is the method to initialize the dependency injection tree.
Future<void> configureDependencies() async => sl.init();

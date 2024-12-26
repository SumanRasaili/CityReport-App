import 'package:citytech/core/dio/dio_manager.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton(() => DioManager());
}

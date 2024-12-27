import 'package:citytech/core/dio/dio_manager.dart';
import 'package:citytech/data/data_providers/api_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton(
    () => DioManager(),
  );
  locator.registerLazySingleton(
    () => ApiService(locator()),
  );
}

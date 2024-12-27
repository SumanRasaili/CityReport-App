import 'package:citytech/core/dio/dio_manager.dart';
import 'package:citytech/data/data_providers/api_service.dart';
import 'package:citytech/data/repositories/transaction_repo_implementation.dart';
import 'package:citytech/domain/repositories/transaction_repositories_interface.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton(
    () => Dio(),
  );
  locator.registerLazySingleton(
    () => DioManager(),
  );
  locator.registerLazySingleton(
    () => ApiService(locator()),
  );
  //repo
  locator.registerLazySingleton<TransactionRepositoriesInterface>(
    () => TransactionRepoImplementation(locator()),
  );
}

import 'package:citytech/core/dio/dio_manager.dart';
import 'package:citytech/data/data_providers/api_service.dart';
import 'package:citytech/data/repositories/transaction_repo_implementation.dart';
import 'package:citytech/domain/repositories/transaction_repositories_interface.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton<DioManager>(
    () => DioManager(),
  );
  locator<DioManager>().setUpDio();
  //apiservice
  locator.registerLazySingleton(
    () => ApiService(locator<DioManager>().dio),
  );

  //repo
  locator.registerLazySingleton<TransactionRepositoriesInterface>(
    () => TransactionRepoImplementation(locator<ApiService>()),
  );
}

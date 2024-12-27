import 'package:citytech/core/dio/dio_manager.dart';
import 'package:citytech/data/data_providers/api_service.dart';
import 'package:citytech/data/repositories/outlet_repo_impl.dart';
import 'package:citytech/data/repositories/transaction_repo_impl.dart';
import 'package:citytech/domain/repositories/outlet_report_interfaces.dart';
import 'package:citytech/domain/repositories/transaction_repositories_interface.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerSingleton<Dio>(Dio());

  locator.registerLazySingleton<DioManager>(
    () => DioManager(),
  );

  //apiservice
  locator.registerLazySingleton(
    () => ApiService(locator<DioManager>().dio),
  );

  //repo
  locator.registerLazySingleton<TransactionRepositoriesInterface>(
    () => TransactionRepoImplementation(locator()),
  );
  locator.registerLazySingleton<OutletReportInterfaces>(
    () => OutletRepoImpl(locator()),
  );
}

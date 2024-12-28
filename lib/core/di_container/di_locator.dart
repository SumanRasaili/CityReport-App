import 'package:citytech/core/dio/dio_manager.dart';
import 'package:citytech/features/home/data/data_providers/api_service.dart';
import 'package:citytech/features/home/data/repositories/outlet_repo_impl.dart';
import 'package:citytech/features/home/data/repositories/transaction_repo_impl.dart';
import 'package:citytech/features/home/domain/repositories/outlet_report_interfaces.dart';
import 'package:citytech/features/home/domain/repositories/transaction_repositories_interface.dart';
import 'package:citytech/features/home/domain/usecases/get_outlet_usecase.dart';
import 'package:citytech/features/home/domain/usecases/get_transaction_usecase.dart';
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
    () => TransactionRepoImplementation(locator<ApiService>()),
  );
  locator.registerLazySingleton<OutletReportInterfaces>(
    () => OutletRepoImpl(locator<ApiService>()),
  );
  //usecases
  locator.registerLazySingleton<GetTransactionUsecase>(
    () => GetTransactionUsecase(locator<TransactionRepositoriesInterface>()),
  );
  locator.registerLazySingleton<GetOutletUseCase>(
    () => GetOutletUseCase(locator<OutletReportInterfaces>()),
  );
}

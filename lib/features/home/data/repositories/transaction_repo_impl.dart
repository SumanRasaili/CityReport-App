import 'package:citytech/features/home/data/data_providers/api_service.dart';
import 'package:citytech/features/home/data/mappers/transaction_mappers.dart';
import 'package:citytech/features/home/domain/entity/transaction_entity.dart';
import 'package:citytech/features/home/domain/repositories/transaction_repositories_interface.dart';

class TransactionRepoImplementation
    implements TransactionRepositoriesInterface {
  final ApiService _apiService;
  TransactionRepoImplementation(this._apiService);
  @override
  Future<List<TransactionReportEntityItem>> getTransactions() async {
    final data = await _apiService.fetchPapTransactionReport();
    return TransactionMappers.toModelList(data);
  }
}

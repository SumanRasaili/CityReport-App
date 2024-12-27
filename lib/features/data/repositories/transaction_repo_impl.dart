import 'package:citytech/features/data/data_providers/api_service.dart';
import 'package:citytech/features/data/models/transaction_report/transaction_report_model.dart';
import 'package:citytech/features/domain/repositories/transaction_repositories_interface.dart';

class TransactionRepoImplementation
    implements TransactionRepositoriesInterface {
  final ApiService _apiService;
  TransactionRepoImplementation(this._apiService);
  @override
  Future<List<TransactionItem>> getTransactions() async {
    final transResponse = await _apiService.fetchPapTransactionReport();
    final transactionList = (transResponse["data"]["items"] as List)
        .map((e) => TransactionItem.fromJson(e))
        .toList();
    return transactionList;
  }
}

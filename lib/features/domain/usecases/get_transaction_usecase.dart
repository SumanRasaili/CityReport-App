import 'package:citytech/features/domain/entity/transaction_entity.dart';
import 'package:citytech/features/domain/repositories/transaction_repositories_interface.dart';

class GetTransactionUsecase {
  final TransactionRepositoriesInterface _transactionRepository;
  GetTransactionUsecase(this._transactionRepository);
  Future<List<TransactionReportEntityItem>> callTransactionData() {
    return _transactionRepository.getTransactions();
  }
}

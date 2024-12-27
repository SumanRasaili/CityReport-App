import 'package:citytech/features/domain/entity/transaction_entity.dart';

abstract class TransactionRepositoriesInterface {
  Future<List<TransactionReportEntityItem>> getTransactions();
}

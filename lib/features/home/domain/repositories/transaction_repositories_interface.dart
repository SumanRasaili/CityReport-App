import 'package:citytech/features/home/domain/entity/transaction_entity.dart';

abstract class TransactionRepositoriesInterface {
  Future<List<TransactionReportEntityItem>> getTransactions();
}

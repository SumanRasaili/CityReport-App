import 'package:citytech/data/models/transaction_report/transaction_report_model.dart';

abstract class TransactionRepositoriesInterface {
  Future<List<TransactionItem>> getTransactions();
}

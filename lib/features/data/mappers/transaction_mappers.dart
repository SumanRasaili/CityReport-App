import 'package:citytech/features/data/models/transaction_report/transaction_report_model.dart';
import 'package:citytech/features/domain/entity/transaction_entity.dart';

class TransactionMappers {
  static List<TransactionReportEntityItem> toModelList(
      List<TransactionItem> transactionItem) {
    return transactionItem
        .map((transactionReportEntity) => TransactionReportEntityItem(
              value: transactionReportEntity.value,
              type: transactionReportEntity.type,
            ))
        .toList();
  }

  static List<TransactionItem> toModel(
      List<TransactionReportEntityItem> transactionReportEntity) {
    return transactionReportEntity
        .map((transactionReportEntity) => TransactionItem(
              value: transactionReportEntity.value,
              type: transactionReportEntity.type,
            ))
        .toList();
  }
}

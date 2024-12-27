part of 'transaction_report_bloc.dart';

sealed class TransactionReportState extends Equatable {
  const TransactionReportState();

  @override
  List<Object> get props => [];
}

final class TransactionReportInitial extends TransactionReportState {}

final class TransactionReortLoading extends TransactionReportState {}

final class TransactionReportLoaded extends TransactionReportState {
  final List<TransactionItem> transactionList;
  const TransactionReportLoaded(this.transactionList);

  @override
  List<Object> get props => [transactionList];
}

class TransactionReportError extends TransactionReportState {
  final String message;
  const TransactionReportError(this.message);

  @override
  List<Object> get props => [message];
}

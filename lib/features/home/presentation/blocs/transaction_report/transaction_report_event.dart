part of 'transaction_report_bloc.dart';

abstract class TransactionReportEvent extends Equatable {
  const TransactionReportEvent();

  @override
  List<Object> get props => [];
}

class FetchTransactionReport extends TransactionReportEvent {}

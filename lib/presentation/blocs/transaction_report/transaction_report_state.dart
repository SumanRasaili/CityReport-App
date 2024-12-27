part of 'transaction_report_bloc.dart';

sealed class TransactionReportState extends Equatable {
  const TransactionReportState();
  
  @override
  List<Object> get props => [];
}

final class TransactionReportInitial extends TransactionReportState {}

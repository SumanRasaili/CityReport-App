import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:citytech/core/error_handling.dart';
import 'package:citytech/data/models/transaction_report_model.dart';
import 'package:citytech/domain/repositories/transaction_repositories_interface.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'transaction_report_event.dart';
part 'transaction_report_state.dart';

class TransactionReportBloc
    extends Bloc<TransactionReportEvent, TransactionReportState> {
  final TransactionRepositoriesInterface transactionRepositoriesInterface;
  TransactionReportBloc(this.transactionRepositoriesInterface)
      : super(TransactionReportInitial()) {
    on<TransactionReportEvent>(_fetchTransactionReport);
  }
  Future<void> _fetchTransactionReport(TransactionReportEvent event,
      Emitter<TransactionReportState> emit) async {
    try {
      emit(TransactionReortLoading());
      final transactionList =
          await transactionRepositoriesInterface.getTransactions();
      emit(TransactionReportLoaded(transactionList));
    } on DioException catch (e) {
      log("Issue Occured on dio $e");
      emit(TransactionReportError(await ErrorHandler().handleError(e)));
    } catch (e) {
      log("Issue Occured $e");
      emit(TransactionReportError(e.toString()));
    }
  }
}

import 'dart:developer';

import 'package:citytech/core/di_container/di_locator.dart';
import 'package:citytech/core/error_handling.dart';
import 'package:citytech/features/domain/entity/transaction_entity.dart';
import 'package:citytech/features/domain/usecases/get_transaction_usecase.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'transaction_report_event.dart';
part 'transaction_report_state.dart';

class TransactionReportBloc
    extends Bloc<TransactionReportEvent, TransactionReportState> {
  TransactionReportBloc() : super(TransactionReportInitial()) {
    on<TransactionReportEvent>(_fetchTransactionReport);
  }
  Future<void> _fetchTransactionReport(TransactionReportEvent event,
      Emitter<TransactionReportState> emit) async {
    try {
      emit(TransactionReportLoading());
      final transactionList =
          await locator<GetTransactionUsecase>().callTransactionData();
      if (transactionList.isEmpty) {
        emit(NoTransactionReport("No Transaction Found"));
      } else {
        emit(TransactionReportLoaded(transactionList));
      }
    } on DioException catch (e, stackTrace) {
      log("Issue Occured on dio $e \n $stackTrace");
      emit(TransactionReportError(await ErrorHandler().handleError(e)));
    } catch (e, stackTrace) {
      log("Issue Occured on below ${e.toString()} \n $stackTrace");
      emit(TransactionReportError(e.toString()));
    }
  }
}

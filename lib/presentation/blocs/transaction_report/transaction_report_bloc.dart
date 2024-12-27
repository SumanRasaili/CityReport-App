import 'package:bloc/bloc.dart';
import 'package:citytech/data/models/transaction_report_model.dart';
import 'package:equatable/equatable.dart';

part 'transaction_report_event.dart';
part 'transaction_report_state.dart';

class TransactionReportBloc extends Bloc<TransactionReportEvent, TransactionReportState> {
  TransactionReportBloc() : super(TransactionReportInitial()) {
    on<TransactionReportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

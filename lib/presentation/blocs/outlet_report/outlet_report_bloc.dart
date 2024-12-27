import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'outlet_report_event.dart';
part 'outlet_report_state.dart';

class OutletReportBloc extends Bloc<OutletReportEvent, OutletReportState> {
  OutletReportBloc() : super(OutletReportInitial()) {
    on<OutletReportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

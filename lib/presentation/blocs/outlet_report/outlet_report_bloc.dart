import 'package:bloc/bloc.dart';
import 'package:citytech/core/error_handling.dart';
import 'package:citytech/data/models/outlet_report/outlet_report_model.dart';
import 'package:citytech/domain/repositories/outlet_report_interfaces.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'outlet_report_event.dart';
part 'outlet_report_state.dart';

class OutletReportBloc extends Bloc<OutletReportEvent, OutletReportState> {
  final OutletReportInterfaces outletReportInterfaces;
  OutletReportBloc(this.outletReportInterfaces) : super(OutletReportInitial()) {
    on<OutletReportEvent>(_fetchOutletReport);
  }
  Future<void> _fetchOutletReport(
      OutletReportEvent event, Emitter<OutletReportState> emit) async {
    try {
      emit(OutletReportLoading());
      final outletList = await outletReportInterfaces.getOutletReport();
      emit(OutletReportLoaded(outletList));
    } on DioException catch (e) {
      emit(OutletReportError(await ErrorHandler().handleError(e)));
    } catch (e) {
      emit(OutletReportError(e.toString()));
    }
  }
}

import 'package:citytech/core/di_container/di_locator.dart';
import 'package:citytech/core/error_handling.dart';
import 'package:citytech/features/home/domain/entity/outlet_entity.dart';
import 'package:citytech/features/home/domain/usecases/get_outlet_usecase.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'outlet_report_event.dart';
part 'outlet_report_state.dart';

class OutletReportBloc extends Bloc<OutletReportEvent, OutletReportState> {
  OutletReportBloc() : super(OutletReportInitial()) {
    on<OutletReportEvent>(_fetchOutletReport);
  }
  Future<void> _fetchOutletReport(
      OutletReportEvent event, Emitter<OutletReportState> emit) async {
    try {
      emit(OutletReportLoading());
      final outletList = await locator<GetOutletUseCase>().getOutlet();
      if (outletList.isEmpty) {
        emit(OutletReportEmpty("No Outlet Found"));
      } else {
        emit(OutletReportLoaded(outletList));
      }
    } on DioException catch (e) {
      emit(OutletReportError(await ErrorHandler().handleError(e)));
    } catch (e) {
      emit(OutletReportError(e.toString()));
    }
  }
}

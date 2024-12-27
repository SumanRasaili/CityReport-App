part of 'outlet_report_bloc.dart';

sealed class OutletReportEvent extends Equatable {
  const OutletReportEvent();

  @override
  List<Object> get props => [];
}

class OutletReportFetchEvent extends OutletReportEvent {}

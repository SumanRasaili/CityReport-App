part of 'outlet_report_bloc.dart';

sealed class OutletReportState extends Equatable {
  const OutletReportState();
  
  @override
  List<Object> get props => [];
}

final class OutletReportInitial extends OutletReportState {}

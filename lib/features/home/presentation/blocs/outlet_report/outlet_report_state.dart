part of 'outlet_report_bloc.dart';

sealed class OutletReportState extends Equatable {
  const OutletReportState();

  @override
  List<Object> get props => [];
}

final class OutletReportInitial extends OutletReportState {}

final class OutletReportLoading extends OutletReportState {}

final class OutletReportLoaded extends OutletReportState {
  final List<OutletEntity> outletList;
  const OutletReportLoaded(this.outletList);

  @override
  List<Object> get props => [outletList];
}

final class OutletReportError extends OutletReportState {
  final String message;
  const OutletReportError(this.message);

  @override
  List<Object> get props => [message];
}

final class OutletReportEmpty extends OutletReportState {
  final String message;
  const OutletReportEmpty(this.message);

  @override
  List<Object> get props => [message];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_report_model.freezed.dart';
part 'outlet_report_model.g.dart';

@freezed
class OutletReportModel with _$OutletReportModel {
  const factory OutletReportModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") OutletReportData? data,
  }) = _OutletReportModel;

  factory OutletReportModel.fromJson(Map<String, dynamic> json) =>
      _$OutletReportModelFromJson(json);
}

@freezed
class OutletReportData with _$OutletReportData {
  const factory OutletReportData({
    @JsonKey(name: "total") @Default(0) num total,
    @JsonKey(name: "items") @Default([]) List<OutletReportItem> items,
  }) = _OutletReportData;

  factory OutletReportData.fromJson(Map<String, dynamic> json) =>
      _$OutletReportDataFromJson(json);
}

@freezed
class OutletReportItem with _$OutletReportItem {
  const factory OutletReportItem({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "value") int? value,
  }) = _OutletReportItem;

  factory OutletReportItem.fromJson(Map<String, dynamic> json) =>
      _$OutletReportItemFromJson(json);
}

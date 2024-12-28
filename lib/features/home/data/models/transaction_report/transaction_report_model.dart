import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_report_model.freezed.dart';
part 'transaction_report_model.g.dart';

@freezed
class TransactionReportModel with _$TransactionReportModel {
  const factory TransactionReportModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") TransactionData? data,
  }) = _TransactionReportModel;

  factory TransactionReportModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionReportModelFromJson(json);
}

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
    @JsonKey(name: "total") @Default(0) num total,
    @JsonKey(name: "items") @Default([]) List<TransactionItem> items,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

@freezed
class TransactionItem with _$TransactionItem {
  const factory TransactionItem({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "value") @Default(0) num value,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemFromJson(json);
}

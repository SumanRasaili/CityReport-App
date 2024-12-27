// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionReportModelImpl _$$TransactionReportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionReportModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TransactionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionReportModelImplToJson(
        _$TransactionReportModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$TransactionDataImpl _$$TransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataImpl(
      total: json['total'] as num? ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => TransactionItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
    };

_$TransactionItemImpl _$$TransactionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionItemImpl(
      type: json['type'] as String?,
      value: json['value'] as num? ?? 0,
    );

Map<String, dynamic> _$$TransactionItemImplToJson(
        _$TransactionItemImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

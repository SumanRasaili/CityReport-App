// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutletReportModelImpl _$$OutletReportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OutletReportModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OutletReportData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OutletReportModelImplToJson(
        _$OutletReportModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$OutletReportDataImpl _$$OutletReportDataImplFromJson(
        Map<String, dynamic> json) =>
    _$OutletReportDataImpl(
      total: json['total'] as num? ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OutletReportItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OutletReportDataImplToJson(
        _$OutletReportDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
    };

_$OutletReportItemImpl _$$OutletReportItemImplFromJson(
        Map<String, dynamic> json) =>
    _$OutletReportItemImpl(
      type: json['type'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OutletReportItemImplToJson(
        _$OutletReportItemImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

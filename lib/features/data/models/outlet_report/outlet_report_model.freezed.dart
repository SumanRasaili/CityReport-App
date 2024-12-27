// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outlet_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OutletReportModel _$OutletReportModelFromJson(Map<String, dynamic> json) {
  return _OutletReportModel.fromJson(json);
}

/// @nodoc
mixin _$OutletReportModel {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  OutletReportData? get data => throw _privateConstructorUsedError;

  /// Serializes this OutletReportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OutletReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OutletReportModelCopyWith<OutletReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletReportModelCopyWith<$Res> {
  factory $OutletReportModelCopyWith(
          OutletReportModel value, $Res Function(OutletReportModel) then) =
      _$OutletReportModelCopyWithImpl<$Res, OutletReportModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") OutletReportData? data});

  $OutletReportDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OutletReportModelCopyWithImpl<$Res, $Val extends OutletReportModel>
    implements $OutletReportModelCopyWith<$Res> {
  _$OutletReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutletReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OutletReportData?,
    ) as $Val);
  }

  /// Create a copy of OutletReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutletReportDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OutletReportDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OutletReportModelImplCopyWith<$Res>
    implements $OutletReportModelCopyWith<$Res> {
  factory _$$OutletReportModelImplCopyWith(_$OutletReportModelImpl value,
          $Res Function(_$OutletReportModelImpl) then) =
      __$$OutletReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") OutletReportData? data});

  @override
  $OutletReportDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OutletReportModelImplCopyWithImpl<$Res>
    extends _$OutletReportModelCopyWithImpl<$Res, _$OutletReportModelImpl>
    implements _$$OutletReportModelImplCopyWith<$Res> {
  __$$OutletReportModelImplCopyWithImpl(_$OutletReportModelImpl _value,
      $Res Function(_$OutletReportModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$OutletReportModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OutletReportData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutletReportModelImpl implements _OutletReportModel {
  const _$OutletReportModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$OutletReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutletReportModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final OutletReportData? data;

  @override
  String toString() {
    return 'OutletReportModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletReportModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of OutletReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletReportModelImplCopyWith<_$OutletReportModelImpl> get copyWith =>
      __$$OutletReportModelImplCopyWithImpl<_$OutletReportModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutletReportModelImplToJson(
      this,
    );
  }
}

abstract class _OutletReportModel implements OutletReportModel {
  const factory _OutletReportModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final OutletReportData? data}) =
      _$OutletReportModelImpl;

  factory _OutletReportModel.fromJson(Map<String, dynamic> json) =
      _$OutletReportModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  OutletReportData? get data;

  /// Create a copy of OutletReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutletReportModelImplCopyWith<_$OutletReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutletReportData _$OutletReportDataFromJson(Map<String, dynamic> json) {
  return _OutletReportData.fromJson(json);
}

/// @nodoc
mixin _$OutletReportData {
  @JsonKey(name: "total")
  num get total => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<OutletReportItem> get items => throw _privateConstructorUsedError;

  /// Serializes this OutletReportData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OutletReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OutletReportDataCopyWith<OutletReportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletReportDataCopyWith<$Res> {
  factory $OutletReportDataCopyWith(
          OutletReportData value, $Res Function(OutletReportData) then) =
      _$OutletReportDataCopyWithImpl<$Res, OutletReportData>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") num total,
      @JsonKey(name: "items") List<OutletReportItem> items});
}

/// @nodoc
class _$OutletReportDataCopyWithImpl<$Res, $Val extends OutletReportData>
    implements $OutletReportDataCopyWith<$Res> {
  _$OutletReportDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutletReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OutletReportItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutletReportDataImplCopyWith<$Res>
    implements $OutletReportDataCopyWith<$Res> {
  factory _$$OutletReportDataImplCopyWith(_$OutletReportDataImpl value,
          $Res Function(_$OutletReportDataImpl) then) =
      __$$OutletReportDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") num total,
      @JsonKey(name: "items") List<OutletReportItem> items});
}

/// @nodoc
class __$$OutletReportDataImplCopyWithImpl<$Res>
    extends _$OutletReportDataCopyWithImpl<$Res, _$OutletReportDataImpl>
    implements _$$OutletReportDataImplCopyWith<$Res> {
  __$$OutletReportDataImplCopyWithImpl(_$OutletReportDataImpl _value,
      $Res Function(_$OutletReportDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_$OutletReportDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OutletReportItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutletReportDataImpl implements _OutletReportData {
  const _$OutletReportDataImpl(
      {@JsonKey(name: "total") this.total = 0,
      @JsonKey(name: "items") final List<OutletReportItem> items = const []})
      : _items = items;

  factory _$OutletReportDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutletReportDataImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final num total;
  final List<OutletReportItem> _items;
  @override
  @JsonKey(name: "items")
  List<OutletReportItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OutletReportData(total: $total, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletReportDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_items));

  /// Create a copy of OutletReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletReportDataImplCopyWith<_$OutletReportDataImpl> get copyWith =>
      __$$OutletReportDataImplCopyWithImpl<_$OutletReportDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutletReportDataImplToJson(
      this,
    );
  }
}

abstract class _OutletReportData implements OutletReportData {
  const factory _OutletReportData(
          {@JsonKey(name: "total") final num total,
          @JsonKey(name: "items") final List<OutletReportItem> items}) =
      _$OutletReportDataImpl;

  factory _OutletReportData.fromJson(Map<String, dynamic> json) =
      _$OutletReportDataImpl.fromJson;

  @override
  @JsonKey(name: "total")
  num get total;
  @override
  @JsonKey(name: "items")
  List<OutletReportItem> get items;

  /// Create a copy of OutletReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutletReportDataImplCopyWith<_$OutletReportDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutletReportItem _$OutletReportItemFromJson(Map<String, dynamic> json) {
  return _OutletReportItem.fromJson(json);
}

/// @nodoc
mixin _$OutletReportItem {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  int? get value => throw _privateConstructorUsedError;

  /// Serializes this OutletReportItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OutletReportItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OutletReportItemCopyWith<OutletReportItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletReportItemCopyWith<$Res> {
  factory $OutletReportItemCopyWith(
          OutletReportItem value, $Res Function(OutletReportItem) then) =
      _$OutletReportItemCopyWithImpl<$Res, OutletReportItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "value") int? value});
}

/// @nodoc
class _$OutletReportItemCopyWithImpl<$Res, $Val extends OutletReportItem>
    implements $OutletReportItemCopyWith<$Res> {
  _$OutletReportItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutletReportItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutletReportItemImplCopyWith<$Res>
    implements $OutletReportItemCopyWith<$Res> {
  factory _$$OutletReportItemImplCopyWith(_$OutletReportItemImpl value,
          $Res Function(_$OutletReportItemImpl) then) =
      __$$OutletReportItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "value") int? value});
}

/// @nodoc
class __$$OutletReportItemImplCopyWithImpl<$Res>
    extends _$OutletReportItemCopyWithImpl<$Res, _$OutletReportItemImpl>
    implements _$$OutletReportItemImplCopyWith<$Res> {
  __$$OutletReportItemImplCopyWithImpl(_$OutletReportItemImpl _value,
      $Res Function(_$OutletReportItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletReportItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_$OutletReportItemImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutletReportItemImpl implements _OutletReportItem {
  const _$OutletReportItemImpl(
      {@JsonKey(name: "type") this.type, @JsonKey(name: "value") this.value});

  factory _$OutletReportItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutletReportItemImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "value")
  final int? value;

  @override
  String toString() {
    return 'OutletReportItem(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletReportItemImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of OutletReportItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletReportItemImplCopyWith<_$OutletReportItemImpl> get copyWith =>
      __$$OutletReportItemImplCopyWithImpl<_$OutletReportItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutletReportItemImplToJson(
      this,
    );
  }
}

abstract class _OutletReportItem implements OutletReportItem {
  const factory _OutletReportItem(
      {@JsonKey(name: "type") final String? type,
      @JsonKey(name: "value") final int? value}) = _$OutletReportItemImpl;

  factory _OutletReportItem.fromJson(Map<String, dynamic> json) =
      _$OutletReportItemImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "value")
  int? get value;

  /// Create a copy of OutletReportItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutletReportItemImplCopyWith<_$OutletReportItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

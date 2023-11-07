// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debit_transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DebitTransactionsModel _$DebitTransactionsModelFromJson(
    Map<String, dynamic> json) {
  return _DebitTransactionsModel.fromJson(json);
}

/// @nodoc
mixin _$DebitTransactionsModel {
  @HiveField(1)
  double? get amount => throw _privateConstructorUsedError;
  @HiveField(1)
  set amount(double? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime? get now => throw _privateConstructorUsedError;
  @HiveField(2)
  set now(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: -1)
  int? get parentId => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: -1)
  set parentId(int? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get superId => throw _privateConstructorUsedError;
  @HiveField(3)
  set superId(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitTransactionsModelCopyWith<DebitTransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitTransactionsModelCopyWith<$Res> {
  factory $DebitTransactionsModelCopyWith(DebitTransactionsModel value,
          $Res Function(DebitTransactionsModel) then) =
      _$DebitTransactionsModelCopyWithImpl<$Res, DebitTransactionsModel>;
  @useResult
  $Res call(
      {@HiveField(1) double? amount,
      @HiveField(2) DateTime? now,
      @HiveField(4, defaultValue: -1) int? parentId,
      @HiveField(3) int? superId});
}

/// @nodoc
class _$DebitTransactionsModelCopyWithImpl<$Res,
        $Val extends DebitTransactionsModel>
    implements $DebitTransactionsModelCopyWith<$Res> {
  _$DebitTransactionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? now = freezed,
    Object? parentId = freezed,
    Object? superId = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      now: freezed == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DebitTransactionsModelCopyWith<$Res>
    implements $DebitTransactionsModelCopyWith<$Res> {
  factory _$$_DebitTransactionsModelCopyWith(_$_DebitTransactionsModel value,
          $Res Function(_$_DebitTransactionsModel) then) =
      __$$_DebitTransactionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) double? amount,
      @HiveField(2) DateTime? now,
      @HiveField(4, defaultValue: -1) int? parentId,
      @HiveField(3) int? superId});
}

/// @nodoc
class __$$_DebitTransactionsModelCopyWithImpl<$Res>
    extends _$DebitTransactionsModelCopyWithImpl<$Res,
        _$_DebitTransactionsModel>
    implements _$$_DebitTransactionsModelCopyWith<$Res> {
  __$$_DebitTransactionsModelCopyWithImpl(_$_DebitTransactionsModel _value,
      $Res Function(_$_DebitTransactionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? now = freezed,
    Object? parentId = freezed,
    Object? superId = freezed,
  }) {
    return _then(_$_DebitTransactionsModel(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      now: freezed == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'DebitTransactionsModelAdapter')
class _$_DebitTransactionsModel extends _DebitTransactionsModel {
  _$_DebitTransactionsModel(
      {@HiveField(1) this.amount,
      @HiveField(2) this.now,
      @HiveField(4, defaultValue: -1) this.parentId,
      @HiveField(3) this.superId})
      : super._();

  factory _$_DebitTransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DebitTransactionsModelFromJson(json);

  @override
  @HiveField(1)
  double? amount;
  @override
  @HiveField(2)
  DateTime? now;
  @override
  @HiveField(4, defaultValue: -1)
  int? parentId;
  @override
  @HiveField(3)
  int? superId;

  @override
  String toString() {
    return 'DebitTransactionsModel(amount: $amount, now: $now, parentId: $parentId, superId: $superId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebitTransactionsModelCopyWith<_$_DebitTransactionsModel> get copyWith =>
      __$$_DebitTransactionsModelCopyWithImpl<_$_DebitTransactionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebitTransactionsModelToJson(
      this,
    );
  }
}

abstract class _DebitTransactionsModel extends DebitTransactionsModel {
  factory _DebitTransactionsModel(
      {@HiveField(1) double? amount,
      @HiveField(2) DateTime? now,
      @HiveField(4, defaultValue: -1) int? parentId,
      @HiveField(3) int? superId}) = _$_DebitTransactionsModel;
  _DebitTransactionsModel._() : super._();

  factory _DebitTransactionsModel.fromJson(Map<String, dynamic> json) =
      _$_DebitTransactionsModel.fromJson;

  @override
  @HiveField(1)
  double? get amount;
  @HiveField(1)
  set amount(double? value);
  @override
  @HiveField(2)
  DateTime? get now;
  @HiveField(2)
  set now(DateTime? value);
  @override
  @HiveField(4, defaultValue: -1)
  int? get parentId;
  @HiveField(4, defaultValue: -1)
  set parentId(int? value);
  @override
  @HiveField(3)
  int? get superId;
  @HiveField(3)
  set superId(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_DebitTransactionsModelCopyWith<_$_DebitTransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

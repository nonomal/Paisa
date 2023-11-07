// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SummaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionEntity> transactions) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionEntity> transactions)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionEntity> transactions)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(TransactionsSuccessState value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(TransactionsSuccessState value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(TransactionsSuccessState value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res, SummaryState>;
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res, $Val extends SummaryState>
    implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SummaryInitialCopyWith<$Res> {
  factory _$$SummaryInitialCopyWith(
          _$SummaryInitial value, $Res Function(_$SummaryInitial) then) =
      __$$SummaryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SummaryInitialCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$SummaryInitial>
    implements _$$SummaryInitialCopyWith<$Res> {
  __$$SummaryInitialCopyWithImpl(
      _$SummaryInitial _value, $Res Function(_$SummaryInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SummaryInitial implements SummaryInitial {
  const _$SummaryInitial();

  @override
  String toString() {
    return 'SummaryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SummaryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionEntity> transactions) update,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionEntity> transactions)? update,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionEntity> transactions)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(TransactionsSuccessState value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(TransactionsSuccessState value)? update,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(TransactionsSuccessState value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SummaryInitial implements SummaryState {
  const factory SummaryInitial() = _$SummaryInitial;
}

/// @nodoc
abstract class _$$TransactionsSuccessStateCopyWith<$Res> {
  factory _$$TransactionsSuccessStateCopyWith(_$TransactionsSuccessState value,
          $Res Function(_$TransactionsSuccessState) then) =
      __$$TransactionsSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionEntity> transactions});
}

/// @nodoc
class __$$TransactionsSuccessStateCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$TransactionsSuccessState>
    implements _$$TransactionsSuccessStateCopyWith<$Res> {
  __$$TransactionsSuccessStateCopyWithImpl(_$TransactionsSuccessState _value,
      $Res Function(_$TransactionsSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$TransactionsSuccessState(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$TransactionsSuccessState implements TransactionsSuccessState {
  const _$TransactionsSuccessState(final List<TransactionEntity> transactions)
      : _transactions = transactions;

  final List<TransactionEntity> _transactions;
  @override
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'SummaryState.update(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsSuccessState &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsSuccessStateCopyWith<_$TransactionsSuccessState>
      get copyWith =>
          __$$TransactionsSuccessStateCopyWithImpl<_$TransactionsSuccessState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionEntity> transactions) update,
  }) {
    return update(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionEntity> transactions)? update,
  }) {
    return update?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionEntity> transactions)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(TransactionsSuccessState value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(TransactionsSuccessState value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(TransactionsSuccessState value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class TransactionsSuccessState implements SummaryState {
  const factory TransactionsSuccessState(
      final List<TransactionEntity> transactions) = _$TransactionsSuccessState;

  List<TransactionEntity> get transactions;
  @JsonKey(ignore: true)
  _$$TransactionsSuccessStateCopyWith<_$TransactionsSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

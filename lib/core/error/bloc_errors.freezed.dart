// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountErrors {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountNotFound,
    required TResult Function() bankName,
    required TResult Function() holderNameError,
    required TResult Function() colorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountNotFound,
    TResult? Function()? bankName,
    TResult? Function()? holderNameError,
    TResult? Function()? colorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountNotFound,
    TResult Function()? bankName,
    TResult Function()? holderNameError,
    TResult Function()? colorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountNotFound value) accountNotFound,
    required TResult Function(_BankNameError value) bankName,
    required TResult Function(_HolderNameError value) holderNameError,
    required TResult Function(_ColorError value) colorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountNotFound value)? accountNotFound,
    TResult? Function(_BankNameError value)? bankName,
    TResult? Function(_HolderNameError value)? holderNameError,
    TResult? Function(_ColorError value)? colorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountNotFound value)? accountNotFound,
    TResult Function(_BankNameError value)? bankName,
    TResult Function(_HolderNameError value)? holderNameError,
    TResult Function(_ColorError value)? colorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountErrorsCopyWith<$Res> {
  factory $AccountErrorsCopyWith(
          AccountErrors value, $Res Function(AccountErrors) then) =
      _$AccountErrorsCopyWithImpl<$Res, AccountErrors>;
}

/// @nodoc
class _$AccountErrorsCopyWithImpl<$Res, $Val extends AccountErrors>
    implements $AccountErrorsCopyWith<$Res> {
  _$AccountErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountNotFoundCopyWith<$Res> {
  factory _$$_AccountNotFoundCopyWith(
          _$_AccountNotFound value, $Res Function(_$_AccountNotFound) then) =
      __$$_AccountNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountNotFoundCopyWithImpl<$Res>
    extends _$AccountErrorsCopyWithImpl<$Res, _$_AccountNotFound>
    implements _$$_AccountNotFoundCopyWith<$Res> {
  __$$_AccountNotFoundCopyWithImpl(
      _$_AccountNotFound _value, $Res Function(_$_AccountNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountNotFound implements _AccountNotFound {
  const _$_AccountNotFound();

  @override
  String toString() {
    return 'AccountErrors.accountNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccountNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountNotFound,
    required TResult Function() bankName,
    required TResult Function() holderNameError,
    required TResult Function() colorError,
  }) {
    return accountNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountNotFound,
    TResult? Function()? bankName,
    TResult? Function()? holderNameError,
    TResult? Function()? colorError,
  }) {
    return accountNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountNotFound,
    TResult Function()? bankName,
    TResult Function()? holderNameError,
    TResult Function()? colorError,
    required TResult orElse(),
  }) {
    if (accountNotFound != null) {
      return accountNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountNotFound value) accountNotFound,
    required TResult Function(_BankNameError value) bankName,
    required TResult Function(_HolderNameError value) holderNameError,
    required TResult Function(_ColorError value) colorError,
  }) {
    return accountNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountNotFound value)? accountNotFound,
    TResult? Function(_BankNameError value)? bankName,
    TResult? Function(_HolderNameError value)? holderNameError,
    TResult? Function(_ColorError value)? colorError,
  }) {
    return accountNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountNotFound value)? accountNotFound,
    TResult Function(_BankNameError value)? bankName,
    TResult Function(_HolderNameError value)? holderNameError,
    TResult Function(_ColorError value)? colorError,
    required TResult orElse(),
  }) {
    if (accountNotFound != null) {
      return accountNotFound(this);
    }
    return orElse();
  }
}

abstract class _AccountNotFound implements AccountErrors {
  const factory _AccountNotFound() = _$_AccountNotFound;
}

/// @nodoc
abstract class _$$_BankNameErrorCopyWith<$Res> {
  factory _$$_BankNameErrorCopyWith(
          _$_BankNameError value, $Res Function(_$_BankNameError) then) =
      __$$_BankNameErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BankNameErrorCopyWithImpl<$Res>
    extends _$AccountErrorsCopyWithImpl<$Res, _$_BankNameError>
    implements _$$_BankNameErrorCopyWith<$Res> {
  __$$_BankNameErrorCopyWithImpl(
      _$_BankNameError _value, $Res Function(_$_BankNameError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BankNameError implements _BankNameError {
  const _$_BankNameError();

  @override
  String toString() {
    return 'AccountErrors.bankName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BankNameError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountNotFound,
    required TResult Function() bankName,
    required TResult Function() holderNameError,
    required TResult Function() colorError,
  }) {
    return bankName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountNotFound,
    TResult? Function()? bankName,
    TResult? Function()? holderNameError,
    TResult? Function()? colorError,
  }) {
    return bankName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountNotFound,
    TResult Function()? bankName,
    TResult Function()? holderNameError,
    TResult Function()? colorError,
    required TResult orElse(),
  }) {
    if (bankName != null) {
      return bankName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountNotFound value) accountNotFound,
    required TResult Function(_BankNameError value) bankName,
    required TResult Function(_HolderNameError value) holderNameError,
    required TResult Function(_ColorError value) colorError,
  }) {
    return bankName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountNotFound value)? accountNotFound,
    TResult? Function(_BankNameError value)? bankName,
    TResult? Function(_HolderNameError value)? holderNameError,
    TResult? Function(_ColorError value)? colorError,
  }) {
    return bankName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountNotFound value)? accountNotFound,
    TResult Function(_BankNameError value)? bankName,
    TResult Function(_HolderNameError value)? holderNameError,
    TResult Function(_ColorError value)? colorError,
    required TResult orElse(),
  }) {
    if (bankName != null) {
      return bankName(this);
    }
    return orElse();
  }
}

abstract class _BankNameError implements AccountErrors {
  const factory _BankNameError() = _$_BankNameError;
}

/// @nodoc
abstract class _$$_HolderNameErrorCopyWith<$Res> {
  factory _$$_HolderNameErrorCopyWith(
          _$_HolderNameError value, $Res Function(_$_HolderNameError) then) =
      __$$_HolderNameErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HolderNameErrorCopyWithImpl<$Res>
    extends _$AccountErrorsCopyWithImpl<$Res, _$_HolderNameError>
    implements _$$_HolderNameErrorCopyWith<$Res> {
  __$$_HolderNameErrorCopyWithImpl(
      _$_HolderNameError _value, $Res Function(_$_HolderNameError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HolderNameError implements _HolderNameError {
  const _$_HolderNameError();

  @override
  String toString() {
    return 'AccountErrors.holderNameError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HolderNameError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountNotFound,
    required TResult Function() bankName,
    required TResult Function() holderNameError,
    required TResult Function() colorError,
  }) {
    return holderNameError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountNotFound,
    TResult? Function()? bankName,
    TResult? Function()? holderNameError,
    TResult? Function()? colorError,
  }) {
    return holderNameError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountNotFound,
    TResult Function()? bankName,
    TResult Function()? holderNameError,
    TResult Function()? colorError,
    required TResult orElse(),
  }) {
    if (holderNameError != null) {
      return holderNameError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountNotFound value) accountNotFound,
    required TResult Function(_BankNameError value) bankName,
    required TResult Function(_HolderNameError value) holderNameError,
    required TResult Function(_ColorError value) colorError,
  }) {
    return holderNameError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountNotFound value)? accountNotFound,
    TResult? Function(_BankNameError value)? bankName,
    TResult? Function(_HolderNameError value)? holderNameError,
    TResult? Function(_ColorError value)? colorError,
  }) {
    return holderNameError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountNotFound value)? accountNotFound,
    TResult Function(_BankNameError value)? bankName,
    TResult Function(_HolderNameError value)? holderNameError,
    TResult Function(_ColorError value)? colorError,
    required TResult orElse(),
  }) {
    if (holderNameError != null) {
      return holderNameError(this);
    }
    return orElse();
  }
}

abstract class _HolderNameError implements AccountErrors {
  const factory _HolderNameError() = _$_HolderNameError;
}

/// @nodoc
abstract class _$$_ColorErrorCopyWith<$Res> {
  factory _$$_ColorErrorCopyWith(
          _$_ColorError value, $Res Function(_$_ColorError) then) =
      __$$_ColorErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ColorErrorCopyWithImpl<$Res>
    extends _$AccountErrorsCopyWithImpl<$Res, _$_ColorError>
    implements _$$_ColorErrorCopyWith<$Res> {
  __$$_ColorErrorCopyWithImpl(
      _$_ColorError _value, $Res Function(_$_ColorError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ColorError implements _ColorError {
  const _$_ColorError();

  @override
  String toString() {
    return 'AccountErrors.colorError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ColorError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accountNotFound,
    required TResult Function() bankName,
    required TResult Function() holderNameError,
    required TResult Function() colorError,
  }) {
    return colorError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accountNotFound,
    TResult? Function()? bankName,
    TResult? Function()? holderNameError,
    TResult? Function()? colorError,
  }) {
    return colorError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accountNotFound,
    TResult Function()? bankName,
    TResult Function()? holderNameError,
    TResult Function()? colorError,
    required TResult orElse(),
  }) {
    if (colorError != null) {
      return colorError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountNotFound value) accountNotFound,
    required TResult Function(_BankNameError value) bankName,
    required TResult Function(_HolderNameError value) holderNameError,
    required TResult Function(_ColorError value) colorError,
  }) {
    return colorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountNotFound value)? accountNotFound,
    TResult? Function(_BankNameError value)? bankName,
    TResult? Function(_HolderNameError value)? holderNameError,
    TResult? Function(_ColorError value)? colorError,
  }) {
    return colorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountNotFound value)? accountNotFound,
    TResult Function(_BankNameError value)? bankName,
    TResult Function(_HolderNameError value)? holderNameError,
    TResult Function(_ColorError value)? colorError,
    required TResult orElse(),
  }) {
    if (colorError != null) {
      return colorError(this);
    }
    return orElse();
  }
}

abstract class _ColorError implements AccountErrors {
  const factory _ColorError() = _$_ColorError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dexter_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DexterException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerException value) server,
    required TResult Function(_$NoInternetException value) noInternet,
    required TResult Function(_$UnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerException value)? server,
    TResult? Function(_$NoInternetException value)? noInternet,
    TResult? Function(_$UnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerException value)? server,
    TResult Function(_$NoInternetException value)? noInternet,
    TResult Function(_$UnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DexterExceptionCopyWith<$Res> {
  factory $DexterExceptionCopyWith(
          DexterException value, $Res Function(DexterException) then) =
      _$DexterExceptionCopyWithImpl<$Res, DexterException>;
}

/// @nodoc
class _$DexterExceptionCopyWithImpl<$Res, $Val extends DexterException>
    implements $DexterExceptionCopyWith<$Res> {
  _$DexterExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$ServerExceptionCopyWith<$Res> {
  factory _$$_$ServerExceptionCopyWith(
          _$_$ServerException value, $Res Function(_$_$ServerException) then) =
      __$$_$ServerExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_$ServerExceptionCopyWithImpl<$Res>
    extends _$DexterExceptionCopyWithImpl<$Res, _$_$ServerException>
    implements _$$_$ServerExceptionCopyWith<$Res> {
  __$$_$ServerExceptionCopyWithImpl(
      _$_$ServerException _value, $Res Function(_$_$ServerException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_$ServerException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ServerException implements _$ServerException {
  const _$_$ServerException(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DexterException.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ServerException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ServerExceptionCopyWith<_$_$ServerException> get copyWith =>
      __$$_$ServerExceptionCopyWithImpl<_$_$ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerException value) server,
    required TResult Function(_$NoInternetException value) noInternet,
    required TResult Function(_$UnknownException value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerException value)? server,
    TResult? Function(_$NoInternetException value)? noInternet,
    TResult? Function(_$UnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerException value)? server,
    TResult Function(_$NoInternetException value)? noInternet,
    TResult Function(_$UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$ServerException implements DexterException {
  const factory _$ServerException(final String message) = _$_$ServerException;

  String get message;
  @JsonKey(ignore: true)
  _$$_$ServerExceptionCopyWith<_$_$ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$NoInternetExceptionCopyWith<$Res> {
  factory _$$_$NoInternetExceptionCopyWith(_$_$NoInternetException value,
          $Res Function(_$_$NoInternetException) then) =
      __$$_$NoInternetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$NoInternetExceptionCopyWithImpl<$Res>
    extends _$DexterExceptionCopyWithImpl<$Res, _$_$NoInternetException>
    implements _$$_$NoInternetExceptionCopyWith<$Res> {
  __$$_$NoInternetExceptionCopyWithImpl(_$_$NoInternetException _value,
      $Res Function(_$_$NoInternetException) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$NoInternetException implements _$NoInternetException {
  const _$_$NoInternetException();

  @override
  String toString() {
    return 'DexterException.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$NoInternetException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerException value) server,
    required TResult Function(_$NoInternetException value) noInternet,
    required TResult Function(_$UnknownException value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerException value)? server,
    TResult? Function(_$NoInternetException value)? noInternet,
    TResult? Function(_$UnknownException value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerException value)? server,
    TResult Function(_$NoInternetException value)? noInternet,
    TResult Function(_$UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$NoInternetException implements DexterException {
  const factory _$NoInternetException() = _$_$NoInternetException;
}

/// @nodoc
abstract class _$$_$UnknownExceptionCopyWith<$Res> {
  factory _$$_$UnknownExceptionCopyWith(_$_$UnknownException value,
          $Res Function(_$_$UnknownException) then) =
      __$$_$UnknownExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$UnknownExceptionCopyWithImpl<$Res>
    extends _$DexterExceptionCopyWithImpl<$Res, _$_$UnknownException>
    implements _$$_$UnknownExceptionCopyWith<$Res> {
  __$$_$UnknownExceptionCopyWithImpl(
      _$_$UnknownException _value, $Res Function(_$_$UnknownException) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$UnknownException implements _$UnknownException {
  const _$_$UnknownException();

  @override
  String toString() {
    return 'DexterException.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$UnknownException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function()? noInternet,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerException value) server,
    required TResult Function(_$NoInternetException value) noInternet,
    required TResult Function(_$UnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ServerException value)? server,
    TResult? Function(_$NoInternetException value)? noInternet,
    TResult? Function(_$UnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerException value)? server,
    TResult Function(_$NoInternetException value)? noInternet,
    TResult Function(_$UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$UnknownException implements DexterException {
  const factory _$UnknownException() = _$_$UnknownException;
}

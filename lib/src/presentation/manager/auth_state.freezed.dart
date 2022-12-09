// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialAuthState value) initial,
    required TResult Function(_$AuthenticatedAuthState value) authenticated,
    required TResult Function(_$LoadingAuthState value) loading,
    required TResult Function(_$ErrorAuthState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$InitialAuthState value)? initial,
    TResult? Function(_$AuthenticatedAuthState value)? authenticated,
    TResult? Function(_$LoadingAuthState value)? loading,
    TResult? Function(_$ErrorAuthState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialAuthState value)? initial,
    TResult Function(_$AuthenticatedAuthState value)? authenticated,
    TResult Function(_$LoadingAuthState value)? loading,
    TResult Function(_$ErrorAuthState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$InitialAuthStateCopyWith<$Res> {
  factory _$$_$InitialAuthStateCopyWith(_$_$InitialAuthState value,
          $Res Function(_$_$InitialAuthState) then) =
      __$$_$InitialAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$InitialAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$InitialAuthState>
    implements _$$_$InitialAuthStateCopyWith<$Res> {
  __$$_$InitialAuthStateCopyWithImpl(
      _$_$InitialAuthState _value, $Res Function(_$_$InitialAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$InitialAuthState implements _$InitialAuthState {
  const _$_$InitialAuthState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$InitialAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(String? message)? error,
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
    required TResult Function(_$InitialAuthState value) initial,
    required TResult Function(_$AuthenticatedAuthState value) authenticated,
    required TResult Function(_$LoadingAuthState value) loading,
    required TResult Function(_$ErrorAuthState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$InitialAuthState value)? initial,
    TResult? Function(_$AuthenticatedAuthState value)? authenticated,
    TResult? Function(_$LoadingAuthState value)? loading,
    TResult? Function(_$ErrorAuthState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialAuthState value)? initial,
    TResult Function(_$AuthenticatedAuthState value)? authenticated,
    TResult Function(_$LoadingAuthState value)? loading,
    TResult Function(_$ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$InitialAuthState implements AuthState {
  const factory _$InitialAuthState() = _$_$InitialAuthState;
}

/// @nodoc
abstract class _$$_$AuthenticatedAuthStateCopyWith<$Res> {
  factory _$$_$AuthenticatedAuthStateCopyWith(_$_$AuthenticatedAuthState value,
          $Res Function(_$_$AuthenticatedAuthState) then) =
      __$$_$AuthenticatedAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthenticatedAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthenticatedAuthState>
    implements _$$_$AuthenticatedAuthStateCopyWith<$Res> {
  __$$_$AuthenticatedAuthStateCopyWithImpl(_$_$AuthenticatedAuthState _value,
      $Res Function(_$_$AuthenticatedAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$AuthenticatedAuthState implements _$AuthenticatedAuthState {
  const _$_$AuthenticatedAuthState();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthenticatedAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialAuthState value) initial,
    required TResult Function(_$AuthenticatedAuthState value) authenticated,
    required TResult Function(_$LoadingAuthState value) loading,
    required TResult Function(_$ErrorAuthState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$InitialAuthState value)? initial,
    TResult? Function(_$AuthenticatedAuthState value)? authenticated,
    TResult? Function(_$LoadingAuthState value)? loading,
    TResult? Function(_$ErrorAuthState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialAuthState value)? initial,
    TResult Function(_$AuthenticatedAuthState value)? authenticated,
    TResult Function(_$LoadingAuthState value)? loading,
    TResult Function(_$ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _$AuthenticatedAuthState implements AuthState {
  const factory _$AuthenticatedAuthState() = _$_$AuthenticatedAuthState;
}

/// @nodoc
abstract class _$$_$LoadingAuthStateCopyWith<$Res> {
  factory _$$_$LoadingAuthStateCopyWith(_$_$LoadingAuthState value,
          $Res Function(_$_$LoadingAuthState) then) =
      __$$_$LoadingAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$LoadingAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$LoadingAuthState>
    implements _$$_$LoadingAuthStateCopyWith<$Res> {
  __$$_$LoadingAuthStateCopyWithImpl(
      _$_$LoadingAuthState _value, $Res Function(_$_$LoadingAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$LoadingAuthState implements _$LoadingAuthState {
  const _$_$LoadingAuthState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$LoadingAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialAuthState value) initial,
    required TResult Function(_$AuthenticatedAuthState value) authenticated,
    required TResult Function(_$LoadingAuthState value) loading,
    required TResult Function(_$ErrorAuthState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$InitialAuthState value)? initial,
    TResult? Function(_$AuthenticatedAuthState value)? authenticated,
    TResult? Function(_$LoadingAuthState value)? loading,
    TResult? Function(_$ErrorAuthState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialAuthState value)? initial,
    TResult Function(_$AuthenticatedAuthState value)? authenticated,
    TResult Function(_$LoadingAuthState value)? loading,
    TResult Function(_$ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$LoadingAuthState implements AuthState {
  const factory _$LoadingAuthState() = _$_$LoadingAuthState;
}

/// @nodoc
abstract class _$$_$ErrorAuthStateCopyWith<$Res> {
  factory _$$_$ErrorAuthStateCopyWith(
          _$_$ErrorAuthState value, $Res Function(_$_$ErrorAuthState) then) =
      __$$_$ErrorAuthStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_$ErrorAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$ErrorAuthState>
    implements _$$_$ErrorAuthStateCopyWith<$Res> {
  __$$_$ErrorAuthStateCopyWithImpl(
      _$_$ErrorAuthState _value, $Res Function(_$_$ErrorAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_$ErrorAuthState(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_$ErrorAuthState implements _$ErrorAuthState {
  const _$_$ErrorAuthState(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ErrorAuthState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ErrorAuthStateCopyWith<_$_$ErrorAuthState> get copyWith =>
      __$$_$ErrorAuthStateCopyWithImpl<_$_$ErrorAuthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$InitialAuthState value) initial,
    required TResult Function(_$AuthenticatedAuthState value) authenticated,
    required TResult Function(_$LoadingAuthState value) loading,
    required TResult Function(_$ErrorAuthState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$InitialAuthState value)? initial,
    TResult? Function(_$AuthenticatedAuthState value)? authenticated,
    TResult? Function(_$LoadingAuthState value)? loading,
    TResult? Function(_$ErrorAuthState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$InitialAuthState value)? initial,
    TResult Function(_$AuthenticatedAuthState value)? authenticated,
    TResult Function(_$LoadingAuthState value)? loading,
    TResult Function(_$ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$ErrorAuthState implements AuthState {
  const factory _$ErrorAuthState(final String? message) = _$_$ErrorAuthState;

  String? get message;
  @JsonKey(ignore: true)
  _$$_$ErrorAuthStateCopyWith<_$_$ErrorAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

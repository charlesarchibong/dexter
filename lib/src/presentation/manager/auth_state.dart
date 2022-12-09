import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _$InitialAuthState;
  const factory AuthState.authenticated() = _$AuthenticatedAuthState;
  const factory AuthState.loading() = _$LoadingAuthState;
  const factory AuthState.error(String? message) = _$ErrorAuthState;
}

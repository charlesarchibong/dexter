import 'package:freezed_annotation/freezed_annotation.dart';

part 'dexter_exception.freezed.dart';

/// [DexterException] is thrown when there is a server error.
@freezed
class DexterException with _$DexterException implements Exception {
  /// [DexterException.server] is thrown when there is a server error.
  const factory DexterException.server(String message) = _$ServerException;

  /// [DexterException.noInternet] is thrown when there
  /// is no internet connection.
  const factory DexterException.noInternet() = _$NoInternetException;

  /// [DexterException.unknown] is thrown when there is an unknown error.
  const factory DexterException.unknown() = _$UnknownException;
}

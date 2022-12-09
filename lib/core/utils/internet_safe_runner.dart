import 'package:dexter_health/core/errors/dexter_exception.dart';
import 'package:dexter_health/core/network/network_info.dart';

class InternetSafeRunner {
  InternetSafeRunner(this.networkInfo);

  final NetworkInfo networkInfo;

  Future<T> call<T>({required Future<T> Function() safeCallback}) async {
    if (await networkInfo.isConnected) {
      return await safeCallback();
    } else {
      throw const DexterException.noInternet();
    }
  }
}

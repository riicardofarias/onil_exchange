import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageKeys {
  static const String accessToken = 'access_token';
}

abstract class IStorageAdapter {
  void setAccessToken(String value);
  String get accessToken;
  bool get isAuthenticated;

  bool hasData(String key);
  Future<void> clear([List<String> keys = const []]);
}

class StorageAdapter implements IStorageAdapter {
  final _storage = Get.find<GetStorage>();

  @override
  Future<void> clear([List<String> keys = const []]) async {
    if(keys.isNotEmpty) {
      for (var k in keys) {
        await _storage.remove(k);
      }
    } else {
      await _storage.erase();
    }
  }

  @override
  bool hasData(String key) {
    return _storage.hasData(key);
  }

  @override
  void setAccessToken(String value) {
    _storage.write(StorageKeys.accessToken, value);
  }

  @override
  String get accessToken {
    return _storage.read(StorageKeys.accessToken);
  }

  @override
  bool get isAuthenticated {
    return _storage.hasData(StorageKeys.accessToken);
  }
}
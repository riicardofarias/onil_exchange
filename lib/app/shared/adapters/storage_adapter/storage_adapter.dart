import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onil/app/modules/authentication/infra/data/user.dart';
import 'package:onil/app/shared/config/config.dart';

class StorageKeys {
  static const String accessToken = 'access_token';
  static const String expiresAt = 'expires_at';
  static const String user = 'user';
}

abstract class IStorageAdapter {
  void setAccessToken(String value);
  String get accessToken;

  void setExpiresAt(int value);
  int get expiresAt;

  void setUser(User value);
  User get user;

  bool hasData(String key);
  Future<void> clear([List<String> keys = const []]);

  bool get isAuthenticated;
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
  int get expiresAt => _storage.read(StorageKeys.expiresAt);

  @override
  void setExpiresAt(int value) {
    _storage.write(StorageKeys.expiresAt, value);
  }

  @override
  bool get isAuthenticated {
    final expiresIn = DateTime.fromMillisecondsSinceEpoch(expiresAt * 1000);
    final diff = expiresIn.difference(DateTime.now());
    return diff.inMinutes > Config.getInt(Config.authTokenRenewTime);
  }

  @override
  void setUser(User value) {
    _storage.write(StorageKeys.user, value.toJson());
  }

  @override
  User get user  {
    final json = _storage.read(StorageKeys.user);
    return User.fromJson(json);
  }
}
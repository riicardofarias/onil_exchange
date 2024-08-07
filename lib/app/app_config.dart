import 'package:event_bus/event_bus.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:onil/app/modules/authentication/domain/repository/authentication_repository.dart';
import 'package:onil/app/modules/authentication/infra/repository/authentication_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:onil/app/shared/adapters/device_info_adapter/device_info.dart';
import 'package:onil/app/shared/adapters/logger_adapter/logger_adapter.dart';
import 'package:onil/app/shared/adapters/package_info_adapter/package_info.dart';
import 'package:onil/app/shared/adapters/rest_client_adapter/rest_client_adapter.dart';
import 'package:onil/app/shared/adapters/storage_adapter/storage_adapter.dart';
import 'package:onil/app/shared/config/config.dart';

class AppConfig {
  static Future<void> initialize({ Env env = Env.development }) async {
    await Config.initialize(env: env);
    await GetStorage.init();
  }

  static Future<void> registerBindings() async  {
    Get.put<PackageInfo>(await getPackageInfo());
    Get.put<DeviceInfo>(await getDeviceInfo());

    Get.put<GetStorage>(GetStorage());
    Get.put<EventBus>(EventBus());

    Get.put<ILoggerAdapter>(LoggerAdapter(Logger()));
    Get.put<IStorageAdapter>(StorageAdapter());

    Get.put<RestClientAdapter>(RestClientAdapter(Get.find(), Get.find(), Get.find()));

    //StorageAdapter().setExpiresAt(0);
  }

  static String get baseUrl {
    return Config.getString(Config.apiUrl);
  }
}
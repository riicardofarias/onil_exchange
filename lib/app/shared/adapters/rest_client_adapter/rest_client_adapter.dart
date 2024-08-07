import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:get/get.dart';
import 'package:onil/app/app_config.dart';
import 'package:onil/app/shared/adapters/device_info_adapter/device_info.dart';
import 'package:onil/app/shared/adapters/rest_client_adapter/interceptors/auth_interceptor.dart';
import 'package:onil/app/shared/adapters/rest_client_adapter/interceptors/error_interceptor.dart';
import 'package:onil/app/shared/adapters/rest_client_adapter/interceptors/logger_interceptor.dart';
import 'package:onil/app/shared/adapters/storage_adapter/storage_adapter.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RestClientAdapter extends DioForNative {
  RestClientAdapter(
    PackageInfo packageInfo,
    DeviceInfo deviceInfo,
    IStorageAdapter storageAdapter
  ) {
    options = BaseOptions(
      baseUrl: AppConfig.baseUrl,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      headers: {
        "x-device-id": "${deviceInfo.os}-${deviceInfo.id}",
        "x-device-name": "${deviceInfo.name} / ${deviceInfo.model}",
        "x-os-version": deviceInfo.version,
        "x-app-version": packageInfo.version,
        "x-app-build-number": packageInfo.buildNumber,
        "user-agent": "onil-exchange ${packageInfo.version} ${deviceInfo.name}; ${Platform.localeName}; ${packageInfo.buildNumber}"
      }
    );

    interceptors.add(LoggerInterceptor(Get.find()));
    interceptors.add(AuthInterceptor(Get.find()));
    interceptors.add(ErrorInterceptor());
  }
}
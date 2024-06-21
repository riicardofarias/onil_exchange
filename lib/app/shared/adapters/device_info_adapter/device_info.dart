import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfo {
  String id;
  String model;
  String version;
  String os;
  String name;

  DeviceInfo({
    required this.id,
    required this.model,
    required this.version,
    required this.os,
    required this.name
  });
}

Future<DeviceInfo> getDeviceInfo() async {
  final infoPlugin = DeviceInfoPlugin();

  if(Platform.isIOS) {
    return infoPlugin.iosInfo.then((info) => DeviceInfo(
        id: "${info.identifierForVendor}",
        model: info.model,
        version: info.systemVersion,
        os: Platform.operatingSystem,
        name: "iOS"
    ));
  }

  if(Platform.isAndroid) {
    return infoPlugin.androidInfo.then((info) => DeviceInfo(
        id: info.id,
        model: info.model,
        version: "${info.version.sdkInt}",
        os: Platform.operatingSystem,
        name: "Android"
    ));
  }

  throw Exception('Device info not found');
}
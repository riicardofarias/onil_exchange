import 'package:package_info_plus/package_info_plus.dart';

Future<PackageInfo> getPackageInfo() {
  return PackageInfo.fromPlatform();
}
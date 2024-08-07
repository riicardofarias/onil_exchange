import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/routes/app_routes.dart';
import 'package:onil/app/shared/adapters/storage_adapter/storage_adapter.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final storage = Get.find<IStorageAdapter>();
    if(!storage.isAuthenticated) {
      return const RouteSettings(name: AppRoutes.signIn);
    }

    return null;
  }
}
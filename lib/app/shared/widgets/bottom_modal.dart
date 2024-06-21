import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future useBottomModal<T>({
  required Widget builder,
  RouteSettings settings = const RouteSettings()
}) async {
  return Get.bottomSheet<T>(
      SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(18, 18, 18, Get.mediaQuery.viewInsets.bottom + 18),
          child: builder,
        )
      ),
      elevation: 1,
      settings: settings
  );
}
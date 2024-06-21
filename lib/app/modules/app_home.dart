import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/intl/transalations.dart';
import 'package:onil/app/modules/app_bindings.dart';
import 'package:onil/app/routes/app_pages.dart';
import 'package:onil/app/theme/app_theme.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Onil Exchange',
      theme: appTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      translations: AppTranslations(),
      locale: AppTranslations.locale,
    );
  }
}
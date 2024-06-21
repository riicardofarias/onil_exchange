import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onil/app/app_config.dart';
import 'package:onil/app/modules/app_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppConfig.initialize();
  await AppConfig.registerBindings();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(const AppHome());
}
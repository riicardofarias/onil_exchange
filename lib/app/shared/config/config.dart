import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Env {
  production,
  stage,
  development
}

class Config {
  static const String apiUrl = "API_URL";
  static const String authTokenRenewTime = "AUTH_TOKEN_RENEW_INTERNAL";

  static Future<void> initialize({ Env env = Env.development, bool validateOnInit = true }) async {
    if(env == Env.development) {
      await dotenv.load(fileName: 'assets/env/local.env');
    } else if (env == Env.stage) {
      await dotenv.load(fileName: 'assets/env/stage.env');
    } else {
      await dotenv.load(fileName: 'assets/env/production.env');
    }

    if (validateOnInit) {
      _validateKeys();
    }
  }

  static void _validateKeys() {
    final allKeys = [
      Config.apiUrl,
    ];

    for (final key in allKeys) {
      if(dotenv.env[key] == null || dotenv.env[key]!.isEmpty) {
        throw Exception("A chave $key não foi definida no arquivo .env");
      }
    }
  }

  static String? getEnv(String key) => dotenv.env[key];

  static String getString(String key) => dotenv.env[key] ?? "";

  static int getInt(String key, { int def = 0 }) => int.parse(dotenv.env[key] ?? "$def");
}
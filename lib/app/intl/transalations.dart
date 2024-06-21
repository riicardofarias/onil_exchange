import 'dart:ui';

import 'package:get/get.dart';

class AppTranslations extends Translations {
  static var locale = Locale('pt', 'BR');

  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR': {
      'onboarding_skip': 'Pular',
      'onboarding_welcome': 'Bem-vindo a',
      'onboarding_secure_transactions': 'Segurança nas transações',
      'onboarding_fast_market': 'Mercado rápido e confiável',
      'onboarding_flexible_negotiation': 'Negociação rápida e flexível',
      'onboarding_signup': 'Cadastrar',
      'onboarding_sign_in': 'Entrar',
    },
  };
}
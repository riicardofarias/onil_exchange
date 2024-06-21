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

      'authentication_sign_in_title': 'Entrar',
      'authentication_sign_in_email': 'E-mail',
      'authentication_sign_in_email_hint': 'Insira o seu endereço de email',
      'authentication_sign_in_password': 'Senha',
      'authentication_sign_in_password_hint': 'Insira sua senha',
      'authentication_sign_in_forgot_password': 'Esqueceu sua senha?',
      'authentication_sign_in_enter': 'Entrar',
      'authentication_sign_in_new_user': 'Novo na Onil?',
      'authentication_sign_in_create_account': 'Criar conta',
    },
  };
}
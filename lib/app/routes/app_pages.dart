import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/presentation/forgot-password/forgot_password_bindings.dart';
import 'package:onil/app/modules/authentication/presentation/forgot-password/forgot_password_view.dart';
import 'package:onil/app/modules/authentication/presentation/sign-in/sign_in_bindings.dart';
import 'package:onil/app/modules/authentication/presentation/sign-in/sign_in_view.dart';
import 'package:onil/app/modules/authentication/presentation/sign-up/sign_up_bindings.dart';
import 'package:onil/app/modules/authentication/presentation/sign-up/sign_up_view.dart';
import 'package:onil/app/modules/home/home.dart';
import 'package:onil/app/modules/onboarding/presentation/onboarding/onboarding_bindings.dart';
import 'package:onil/app/modules/onboarding/presentation/onboarding/onboarding_view.dart';
import 'package:onil/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.home;

  static final routes = [
    GetPage(
      name: AppRoutes.onboarding,
      binding: OnboardingBindings(),
      page: () => OnboardingView(),
    ),
    GetPage(
      name: AppRoutes.home,
      binding: HomeBindings(),
      middlewares: [AuthMiddleware()],
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      binding: SignInBindings(),
      page: () => SignInView(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      binding: SignUpBindings(),
      page: () => SignUpView(),
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      binding: ForgotPasswordBindings(),
      page: () => ForgotPasswordView(),
    ),
  ];
}
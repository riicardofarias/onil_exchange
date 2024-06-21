import 'package:get/get.dart';
import 'package:onil/app/modules/home/home.dart';
import 'package:onil/app/modules/onboarding/presentation/onboarding/onboarding_bindings.dart';
import 'package:onil/app/modules/onboarding/presentation/onboarding/onboarding_view.dart';
import 'package:onil/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.onboarding;

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
  ];
}
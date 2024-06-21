import 'package:get/get.dart';
import 'package:onil/app/modules/onboarding/presentation/onboarding/onboarding_controller.dart';

class OnboardingBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IOnboardingController>(() => OnboardingController());
  }
}
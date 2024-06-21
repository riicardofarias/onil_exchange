import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/presentation/sign-in/sign_in_controller.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISignInController>(() => SignInController());
  }
}
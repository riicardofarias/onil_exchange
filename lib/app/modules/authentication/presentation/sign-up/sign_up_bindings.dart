import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/presentation/sign-up/sign_up_controller.dart';

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISignUpController>(() => SignUpController());
  }
}
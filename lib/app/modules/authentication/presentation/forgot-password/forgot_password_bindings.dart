import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/presentation/forgot-password/forgot_password_controller.dart';

class ForgotPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IForgotPasswordController>(() => ForgotPasswordController());
  }
}
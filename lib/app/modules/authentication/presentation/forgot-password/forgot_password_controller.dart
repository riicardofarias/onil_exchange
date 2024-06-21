import 'package:get/get.dart';

abstract class IForgotPasswordController extends GetxController {
  bool get revealPassword;
}

class ForgotPasswordController extends IForgotPasswordController{
  final RxBool _revealPassword = false.obs;


  void onRevealPasswordPressed() {
    _revealPassword.value = !_revealPassword.value;
  }

  @override
  bool get revealPassword => _revealPassword.value;
}
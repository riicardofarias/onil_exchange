import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class IForgotPasswordController extends GetxController {
  TextEditingController get emailCtrl;

  bool get revealPassword;
}

class ForgotPasswordController extends IForgotPasswordController{
  final RxBool _revealPassword = false.obs;
  final TextEditingController _emailCtrl = TextEditingController();


  void onRevealPasswordPressed() {
    _revealPassword.value = !_revealPassword.value;
  }

  @override
  bool get revealPassword => _revealPassword.value;

  @override
  TextEditingController get emailCtrl => _emailCtrl;
}
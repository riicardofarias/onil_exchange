import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onil/app/shared/extension/extension.dart';

abstract class ISignInController extends GetxController {
  void onRevealPasswordPressed();
  void onSignInPressed();

  String? validateEmail(String? value);
  String? validatePassword(String? value);

  bool get isPasswordVisible;
  TextEditingController get emailCtrl;
  TextEditingController get passwordCtrl;
  GlobalKey<FormState> get formKey;
}

class SignInController extends ISignInController{
  final RxBool _revealPassword = false.obs;
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void onRevealPasswordPressed() {
    _revealPassword.value = !_revealPassword.value;
  }

  @override
  void onSignInPressed() {
    if (_formKey.isNotValid) {
      return;
    }
  }

  @override
  String? validateEmail(String? value) {
    return (GetUtils.isNullOrBlank(value) ?? true) ? 'Campo obrigatório' : null;
  }

  @override
  String? validatePassword(String? value) {
    return (GetUtils.isNullOrBlank(value) ?? true) ? 'Campo obrigatório' : null;
  }

  @override
  bool get isPasswordVisible => _revealPassword.value;

  @override
  TextEditingController get emailCtrl => _emailCtrl;

  @override
  TextEditingController get passwordCtrl => _passwordCtrl;

  @override
  GlobalKey<FormState> get formKey => _formKey;
}
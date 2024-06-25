import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onil/app/shared/extension/extension.dart';

abstract class ISignUpController extends GetxController {
  void onSignUpPressed();
  void onRevealPasswordPressed();
  void onRevealConfirmPasswordPressed();
  void onAcceptedTermsPressed(bool? checked);

  String? validateEmail(String? value);
  String? validatePassword(String? value);

  bool get isPasswordVisible;
  bool get isConfirmPasswordVisible;
  bool get isAcceptedTerms;

  TextEditingController get emailCtrl;
  TextEditingController get passwordCtrl;
  TextEditingController get confirmPasswordCtrl;

  GlobalKey<FormState> get formKey;
}

class SignUpController extends ISignUpController{
  final RxBool _revealPassword = false.obs;
  final RxBool _revealConfirmPassword = false.obs;
  final RxBool _acceptedTerms = false.obs;

  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  final TextEditingController _confirmPasswordCtrl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void onSignUpPressed() {
    if (_formKey.isNotValid) {
      return;
    }

    if (_passwordCtrl.text != _confirmPasswordCtrl.text) {
      return;
    }
  }

  @override
  void onRevealPasswordPressed() {
    _revealPassword.value = !_revealPassword.value;
  }

  @override
  void onRevealConfirmPasswordPressed() {
    _revealConfirmPassword.value = !_revealConfirmPassword.value;
  }

  @override
  void onAcceptedTermsPressed(bool? checked) {
    _acceptedTerms.value = checked ?? false;
  }

  @override
  String? validateEmail(String? value) {
    return GetUtils.isEmail(value ?? '') ? null : 'Email inválido';
  }

  @override
  String? validatePassword(String? value) {
    final passwordRegExp = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$'
    );

    return passwordRegExp.hasMatch(value ?? '') ? null : 'Senha inválida';
  }

  @override
  GlobalKey<FormState> get formKey => _formKey;

  @override
  TextEditingController get emailCtrl => _emailCtrl;

  @override
  TextEditingController get passwordCtrl => _passwordCtrl;

  @override
  TextEditingController get confirmPasswordCtrl => _confirmPasswordCtrl;

  @override
  bool get isPasswordVisible => _revealPassword.value;

  @override
  bool get isConfirmPasswordVisible => _revealConfirmPassword.value;

  @override
  bool get isAcceptedTerms => _acceptedTerms.value;
}
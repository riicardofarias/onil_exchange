import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/domain/usecase/auth_email.dart';
import 'package:onil/app/modules/authentication/infra/repository/authentication_repository.dart';
import 'package:onil/app/routes/app_routes.dart';
import 'package:onil/app/shared/adapters/storage_adapter/storage_adapter.dart';
import 'package:onil/app/shared/extension/extension.dart';
import 'package:onil/app/shared/mixin/loading_mixin.dart';

class SignInController extends GetxController with LoadingMixin {
  final AuthEmailUseCase _authEmailUseCase;
  final IStorageAdapter _storageAdapter;

  final RxBool _revealPassword = false.obs;

  final TextEditingController _emailCtrl = TextEditingController(
    text: 'winkcler@gmail.com'
  );

  final TextEditingController _passwordCtrl = TextEditingController(
    text: '123456'
  );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignInController(
    this._storageAdapter, this._authEmailUseCase
  );

  void onRevealPasswordPressed() {
    _revealPassword.value = !_revealPassword.value;
  }

  void onSignInPressed() async {
    if (_formKey.isNotValid) {
      return;
    }

    try {
      setLoading(true);

      await _authEmailUseCase.execute(
        _emailCtrl.text,
        _passwordCtrl.text
      );

      Get.offNamed(AppRoutes.home);
    }finally{
      setLoading(false);
    }
  }

  String? validateEmail(String? value) {
    return (GetUtils.isNullOrBlank(value) ?? true) ? 'Campo obrigatório' : null;
  }

  String? validatePassword(String? value) {
    return (GetUtils.isNullOrBlank(value) ?? true) ? 'Campo obrigatório' : null;
  }

  bool get isPasswordVisible => _revealPassword.value;
  TextEditingController get emailCtrl => _emailCtrl;
  TextEditingController get passwordCtrl => _passwordCtrl;
  GlobalKey<FormState> get formKey => _formKey;
}
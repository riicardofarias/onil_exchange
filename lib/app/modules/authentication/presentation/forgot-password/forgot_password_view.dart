import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/presentation/forgot-password/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<IForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar senha'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/presentation/forgot-password/forgot_password_controller.dart';
import 'package:onil/app/theme/app_color.dart';
import 'package:onil/app/theme/app_style.dart';

class ForgotPasswordView extends GetView<IForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueci a senha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Por favor, insira o e-mail que você usa para entrar na plataforma', style: TextStyle(
              color: AppColor.textNeutral3
            )),
            SizedBox(height: 20),
            Text('Email', style: AppStyle.labelStyle),
            SizedBox(height: 10),
            TextFormField(
              controller: controller.emailCtrl,
              decoration: InputDecoration(
                hintText: 'Insira o seu endereço de email',
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: (){},
              child: Text('Próximo', style: TextStyle(fontSize: 18))
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/presentation/sign-up/sign_up_controller.dart';
import 'package:onil/app/routes/app_routes.dart';
import 'package:onil/app/shared/widgets/input_form_text.dart';
import 'package:onil/app/theme/app_color.dart';
import 'package:onil/app/theme/app_style.dart';

class SignUpView extends GetView<ISignUpController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputFormText(
                  label: Text("Email", style: AppStyle.labelStyle),
                  child: TextFormField(
                    controller: controller.emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    validator: controller.validateEmail,
                    decoration: InputDecoration(
                      hintText: 'Insira o seu endereço de email',
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Obx(
                  () => InputFormText(
                    label: Text("Senha", style: AppStyle.labelStyle),
                    child: TextFormField(
                      obscureText: !controller.isPasswordVisible,
                      controller: controller.passwordCtrl,
                      validator: controller.validatePassword,
                      decoration: InputDecoration(
                        hintText: 'Insira sua senha',
                        suffixIcon: GestureDetector(
                          onTap: controller.onRevealPasswordPressed,
                          child: Icon(controller.isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Obx(
                  () => InputFormText(
                    label: Text("Confirme sua senha", style: AppStyle.labelStyle),
                    child: TextFormField(
                      obscureText: !controller.isConfirmPasswordVisible,
                      controller: controller.confirmPasswordCtrl,
                      validator: controller.validatePassword,
                      decoration: InputDecoration(
                        hintText: 'Confirme sua senha',
                        suffixIcon: GestureDetector(
                          onTap: controller.onRevealConfirmPasswordPressed,
                          child: Icon(controller.isConfirmPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text("Pelo menos 8 caracteres com letras maiúsculas, minúsculas e números", style: Get.theme.textTheme.bodySmall),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                      child: Obx(
                        () => Checkbox(
                          value: controller.isAcceptedTerms,
                          onChanged: controller.onAcceptedTermsPressed
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: RichText(
                          text: TextSpan(
                            text: 'Aceite os ',
                            style: Get.theme.textTheme.bodySmall,
                            children: [
                              TextSpan(
                                text: 'Termos',
                                style: TextStyle(color: Get.theme.colorScheme.primary),
                              ),
                              TextSpan(text: ' e '),
                              TextSpan(
                                text: 'Política de Privacidade',
                                style: TextStyle(color: Get.theme.colorScheme.primary)
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: controller.onSignUpPressed,
                  child: Text("Cadastrar", style: AppStyle.buttonLargeTextStyle)
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Já possui um conta?", style: TextStyle(
              color: AppColor.textNeutral2
            )),
            TextButton(
              onPressed: () => Get.toNamed(AppRoutes.signIn),
              child: Text("Entrar")
            ),
          ],
        )
      )
    );
  }
}


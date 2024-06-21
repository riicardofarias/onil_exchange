import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/domain/constants/authentication_translate.dart';
import 'package:onil/app/modules/authentication/presentation/sign-in/sign_in_controller.dart';
import 'package:onil/app/routes/app_routes.dart';

class SignInView extends GetView<ISignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AuthenticationTranslate.signInTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AuthenticationTranslate.signInEmail),
              SizedBox(height: 10),
              TextFormField(
                validator: controller.validateEmail,
                decoration: InputDecoration(
                  hintText: AuthenticationTranslate.signInEmailHint,
                ),
              ),
              SizedBox(height: 20),
              Text(AuthenticationTranslate.signInPassword),
              SizedBox(height: 10),
              Obx(
                () => TextFormField(
                  obscureText: !controller.isPasswordVisible,
                  validator: controller.validatePassword,
                  decoration: InputDecoration(
                    hintText: AuthenticationTranslate.signInPasswordHint,
                    suffixIcon: GestureDetector(
                      onTap: controller.onRevealPasswordPressed,
                      child: Icon(controller.isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () => Get.toNamed(AppRoutes.forgotPassword),
                child: Text(AuthenticationTranslate.signInForgotPassword)
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.onSignInPressed,
                  child: Text(AuthenticationTranslate.signInEnter, style: TextStyle(fontSize: 18))
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AuthenticationTranslate.signInNewUser),
            TextButton(
              onPressed: (){},
              child: Text(AuthenticationTranslate.signInCreateAccount)
            ),
          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/authentication/domain/constants/authentication_translate.dart';
import 'package:onil/app/modules/authentication/presentation/sign-in/sign_in_controller.dart';
import 'package:onil/app/routes/app_routes.dart';
import 'package:onil/app/theme/app_color.dart';
import 'package:onil/app/theme/app_style.dart';

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(AuthenticationTranslate.signInEmail, style: AppStyle.labelStyle),
              SizedBox(height: 10),
              TextFormField(
                validator: controller.validateEmail,
                decoration: InputDecoration(
                  hintText: AuthenticationTranslate.signInEmailHint,
                ),
              ),
              SizedBox(height: 20),
              Text(AuthenticationTranslate.signInPassword, style: AppStyle.labelStyle),
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
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.forgotPassword),
                  child: Text(AuthenticationTranslate.signInForgotPassword)
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: controller.onSignInPressed,
                child: Text(AuthenticationTranslate.signInEnter, style: AppStyle.buttonLargeTextStyle)
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
            Text(AuthenticationTranslate.signInNewUser, style: TextStyle(
              color: AppColor.textNeutral2
            )),
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

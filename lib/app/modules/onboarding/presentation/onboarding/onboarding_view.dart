import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/onboarding/domain/constants/translate.dart';
import 'package:onil/app/modules/onboarding/presentation/onboarding/onboarding_controller.dart';
import 'package:onil/app/modules/onboarding/presentation/onboarding/pages/exports.dart';
import 'package:onil/app/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends GetView<IOnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            child: Text(OnboardingTranslate.skip),
            onPressed: () => Get.offNamed(AppRoutes.signIn)
          )
        ],
      ),
      body: PageView(
        controller: controller.pageCtrl,
        onPageChanged: controller.onPageChanged,
        children: [
          OnboardingWelcome(),
          OnboardingSecureTransactions(),
          OnboardingFastMarket(),
          OnboardingEnter(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: controller.pageCtrl,
              count: controller.pageCount,
              effect: ExpandingDotsEffect(
                radius: 4,
                dotHeight: 5,
                dotWidth: 10,
                activeDotColor: Get.theme.colorScheme.primary,
              )
            ),
            IconButton(
              onPressed: controller.onContinue,
              icon: Icon(Icons.arrow_forward_ios_outlined),
              style: IconButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(12),
                backgroundColor: Get.theme.colorScheme.primary,
              )
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/onboarding/domain/constants/onboarding_assets.dart';
import 'package:onil/app/modules/onboarding/domain/constants/onboarding_translate.dart';
import 'package:onil/app/routes/app_routes.dart';

class OnboardingEnter extends StatelessWidget {
  const OnboardingEnter({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(OnboardingAssets.onboarding4),
            SizedBox(height: 20),
            Text(OnboardingTranslate.flexibleNegotiation, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    child: Text(OnboardingTranslate.signUp),
                    onPressed: (){},
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    child: Text(OnboardingTranslate.signIn),
                    onPressed: () => Get.offNamed(AppRoutes.signIn),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

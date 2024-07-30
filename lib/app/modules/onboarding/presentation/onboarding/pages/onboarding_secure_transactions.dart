import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onil/app/modules/onboarding/domain/constants/assets.dart';
import 'package:onil/app/modules/onboarding/domain/constants/translate.dart';
class OnboardingSecureTransactions extends StatelessWidget {
  const OnboardingSecureTransactions({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(OnboardingAssets.onboarding2),
            SizedBox(height: 20),
            Text(OnboardingTranslate.secureTransactions, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    ),
  );
}

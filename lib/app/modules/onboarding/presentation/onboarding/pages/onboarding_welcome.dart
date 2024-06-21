import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onil/app/modules/onboarding/constants/onboarding_assets.dart';
import 'package:onil/app/modules/onboarding/constants/onboarding_translate.dart';

class OnboardingWelcome extends StatelessWidget {
  const OnboardingWelcome({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(OnboardingTranslate.welcome, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
        SizedBox(height: 20),
        SvgPicture.asset(OnboardingAssets.onboarding1),
      ],
    ),
  );
}

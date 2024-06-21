import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onil/app/modules/onboarding/constants/onboarding_assets.dart';
import 'package:onil/app/modules/onboarding/constants/onboarding_translate.dart';

class OnboardingFastMarket extends StatelessWidget {
  const OnboardingFastMarket({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(OnboardingAssets.onboarding3),
        SizedBox(height: 20),
        Text(OnboardingTranslate.fastMarket, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
      ],
    ),
  );
}

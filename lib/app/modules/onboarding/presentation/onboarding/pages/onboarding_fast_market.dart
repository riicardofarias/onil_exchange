import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onil/app/modules/onboarding/domain/constants/assets.dart';
import 'package:onil/app/modules/onboarding/domain/constants/translate.dart';

class OnboardingFastMarket extends StatelessWidget {
  const OnboardingFastMarket({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: SingleChildScrollView(
      child: Padding(
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
      ),
    ),
  );
}

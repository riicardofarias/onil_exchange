import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class IOnboardingController extends GetxController {
  void onSkip();
  void onContinue();
  void onPageChanged(int index);

  PageController get pageCtrl;
  int get pageCount;
}

class OnboardingController extends IOnboardingController {
  final PageController _pageCtrl = PageController();

  @override
  void onContinue() {
    _pageCtrl.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn);
  }

  @override
  void onPageChanged(int index) {
  }

  @override
  void onSkip() {
    // TODO: implement onSkip
  }

  @override
  PageController get pageCtrl => _pageCtrl;

  @override
  int get pageCount => 4;
}
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onil/app/routes/app_routes.dart';

abstract class IOnboardingController extends GetxController {
  void onContinue();
  void onPageChanged(int index);

  PageController get pageCtrl;
  int get pageCount;
}

class OnboardingController extends IOnboardingController {
  final PageController _pageCtrl = PageController();
  int _currentIndex = 0;

  @override
  void onContinue() {
    if (_currentIndex == pageCount - 1) {
      Get.offAndToNamed(AppRoutes.signIn);
      return;
    }

    _pageCtrl.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn);
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
  }

  @override
  PageController get pageCtrl => _pageCtrl;

  @override
  int get pageCount => 4;
}
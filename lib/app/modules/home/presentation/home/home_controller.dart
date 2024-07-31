import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class HomeController extends GetxController{
  final RxInt _activeIndex = 0.obs;
  final PageController pageCtrl = PageController();

  int get activeIndex => _activeIndex.value;

  void onPageChanged(int index) {
    activeIndex = index;
  }

  set activeIndex(int value) {
    pageCtrl.jumpToPage(value);
    _activeIndex.value = value;
  }
}
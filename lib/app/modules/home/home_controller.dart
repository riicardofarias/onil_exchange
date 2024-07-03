import 'package:get/get.dart';

abstract class IHomeController extends GetxController {
  int get activeIndex;
  set activeIndex(int value);
}

class HomeController extends IHomeController{
  final RxInt _activeIndex = 0.obs;

  @override
  int get activeIndex => _activeIndex.value;

  @override
  set activeIndex(int value) {
    _activeIndex.value = value;
  }
}
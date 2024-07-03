import 'package:get/get.dart';
import 'package:onil/app/modules/home/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IHomeController>(HomeController());
  }
}
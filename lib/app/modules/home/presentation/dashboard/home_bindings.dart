import 'package:get/get.dart';
import 'package:onil/app/modules/home/infra/repository/balance_repository.dart';
import 'package:onil/app/modules/home/infra/repository/quotation_repository.dart';
import 'package:onil/app/modules/home/presentation/balance/balance_controller.dart';
import 'package:onil/app/modules/home/presentation/quotation/quotation_controller.dart';

import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<BalanceController>(BalanceController(BalanceRepository(Get.find())));
    Get.put<QuotationController>(QuotationController(QuotationRepository(Get.find())));

    Get.put<IHomeController>(HomeController());
  }
}
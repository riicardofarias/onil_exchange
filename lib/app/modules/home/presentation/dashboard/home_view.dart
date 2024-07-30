import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:onil/app/modules/home/presentation/dashboard/cards/balance/balance_card.dart';
import 'package:onil/app/modules/home/presentation/dashboard/cards/quotation/quotation_card.dart';
import 'package:onil/app/modules/home/presentation/dashboard/home_controller.dart';

class HomeView extends GetView<IHomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {  },
            icon: const HeroIcon(HeroIcons.bellAlert),
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BalanceCard(),
            QuotationCard(),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        shape: CircleBorder(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar(
          gapLocation: GapLocation.center,
          backgroundColor: Get.theme.bottomNavigationBarTheme.backgroundColor,
          activeColor: Get.theme.bottomNavigationBarTheme.selectedItemColor,
          splashColor: Get.theme.bottomNavigationBarTheme.selectedItemColor,
          height: 60,
          icons: [
            LineIcons.home,
            LineIcons.barChartAlt,
            LineIcons.pieChart,
            LineIcons.cog,
          ],
          activeIndex: controller.activeIndex,
          onTap: (index) => controller.activeIndex = index,
        ),
      ),
    );
  }
}

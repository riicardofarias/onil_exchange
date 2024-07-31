import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:onil/app/modules/home/presentation/dashboard/dashboard_view.dart';
import 'package:onil/app/modules/home/presentation/home/home_controller.dart';
import 'package:onil/app/modules/market/presentation/market/market_view.dart';
import 'package:onil/app/modules/settings/presentation/settings/settings_view.dart';
import 'package:onil/app/modules/wallet/presentation/wallets/wallets_view.dart';

class HomeView extends GetView<HomeController> {
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
      body: PageView(
        onPageChanged: controller.onPageChanged,
        controller: controller.pageCtrl,
        children: [
          DashboardView(),
          MarketView(),
          WalletsView(),
          SettingsView(),
        ],
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

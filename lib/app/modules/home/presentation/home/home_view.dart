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
        () => AnimatedBottomNavigationBar.builder(
          gapLocation: GapLocation.center,
          backgroundColor: Get.theme.bottomNavigationBarTheme.backgroundColor,
          splashColor: Get.theme.bottomNavigationBarTheme.selectedItemColor,
          height: 60,
          activeIndex: controller.activeIndex,
          onTap: (index) => controller.activeIndex = index,
          itemCount: 4,
          tabBuilder: (int index, bool isActive) => HeroIcon(
            _bottomIcons[index], color: _getColor(isActive),
          ),
        ),
      ),
    );
  }

  List<HeroIcons> get _bottomIcons {
    return [
      HeroIcons.home,
      HeroIcons.chartBar,
      HeroIcons.chartPie,
      HeroIcons.cog6Tooth
    ];
  }
  
  Color? _getColor(bool isActive) {
    return isActive ? Get.theme.bottomNavigationBarTheme.selectedItemColor : Get.theme.bottomNavigationBarTheme.unselectedItemColor;
  }
}

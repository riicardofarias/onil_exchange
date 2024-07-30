import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/home/domain/constants/icons.dart';
import 'package:onil/app/modules/home/presentation/balance/balance_controller.dart';
import 'package:onil/app/shared/extension/strings.dart';
import 'package:onil/app/shared/mixin/mixin.dart';

class BalanceView extends GetView<BalanceController> {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.useObx(
      (userWallets) => Column(
        children: [
          SizedBox(
            height: 150,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                final userWallet = userWallets[index];
                final currency = userWallet.currency;

                return Card(
                  color: userWallet.currency.color.toColor(),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0, left: 0,
                        child: SvgPicture.asset(HomeIcons.background)
                      ),
                      Positioned(
                        top: 18, right: 70, child: SvgPicture.asset(HomeIcons.coin, width: 25)
                      ),
                      Positioned(
                        bottom: 18, right: 25, child: SvgPicture.asset(HomeIcons.coin, width: 50)
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Saldo total em ',
                                style: Get.textTheme.bodyLarge?.copyWith(color: Colors.black87),
                                children: [
                                  TextSpan(text: currency.code, style: Get.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.black87)),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(userWallet.amountNonSymbol, style: Get.textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.black87
                            )),
                          ],
                        ),
                      ),


                    ],
                  )
                );
              },
              itemCount: 3,
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          )
        ],
      ),
    );
  }
}

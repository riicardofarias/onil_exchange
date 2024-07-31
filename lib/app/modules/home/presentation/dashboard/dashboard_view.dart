import 'package:flutter/material.dart';
import 'package:onil/app/modules/home/presentation/dashboard/cards/balance/balance_card.dart';
import 'package:onil/app/modules/home/presentation/dashboard/cards/quotation/quotation_card.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BalanceCard(),
            QuotationCard(),
          ],
        )
      ),
    );
  }
}

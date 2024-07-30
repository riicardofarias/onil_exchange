import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onil/app/modules/home/infra/data/quotation.dart';
import 'package:onil/app/modules/home/presentation/dashboard/cards/quotation/quotation_controller.dart';
import 'package:onil/app/shared/mixin/state_mixin.dart';

class QuotationCard extends GetView<QuotationController> {
  const QuotationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cotações", style: Get.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600
              )),
              TextButton(
                child: Text("Ver tudo"),
                onPressed: (){},
              )
            ],
          ),
        ),
        controller.useObx(
          (quotations) => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Wrap(
                spacing: 12,
                children: quotations.map((q) =>
                  _quotationCard(q)
                ).toList(),
              ),
            )
          ),
        )
      ],
    );
  }

  Widget _quotationCard(Quotation quotation) => SizedBox(
    height: 200,
    width: 165,
    child: Card(
      color: Color.fromRGBO(40, 43, 53, 1),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quotation.coin, style: Get.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600
            )),
            SizedBox(height: 5),
            Text(quotation.amount, style: Get.textTheme.bodyMedium),
          ],
        ),
      ),
    ),
  );
}

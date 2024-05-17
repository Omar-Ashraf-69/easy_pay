import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TotalPriceRowWidget extends StatelessWidget {
  const TotalPriceRowWidget({
    super.key,
    required this.amount,
  });
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: Styles.style24(context),
        ),
        Text(
          '\$$amount',
          style: Styles.style24(context),
        ),
      ],
    );
  }
}

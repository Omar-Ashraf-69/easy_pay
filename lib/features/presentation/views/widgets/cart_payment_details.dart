import 'package:easy_pay/features/presentation/views/widgets/custom_details_row.dart';
import 'package:easy_pay/features/presentation/views/widgets/custom_divider.dart';
import 'package:easy_pay/features/presentation/views/widgets/total_price_row.dart';
import 'package:flutter/material.dart';

class CartPaymentDetials extends StatelessWidget {
  const CartPaymentDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DetailsRowWidget(
          label: "Order Subtotal",
          details: "\$42.97",
        ),
        SizedBox(
          height: 3,
        ),
        DetailsRowWidget(
          label: "Discount",
          details: "\$0",
        ),
        SizedBox(
          height: 3,
        ),
        DetailsRowWidget(
          label: "Shipping",
          details: "\$8",
        ),
                  CustomDivider(),

        TotalPriceRowWidget(
          amount: '50.97',
        ),
      ],
    );
  }
}

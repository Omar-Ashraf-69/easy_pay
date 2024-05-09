import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:easy_pay/features/presentation/views/widgets/cart_details_row.dart';
import 'package:flutter/material.dart';

class CartPaymentDetials extends StatelessWidget {
  const CartPaymentDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CartDetailsRowWidget(
          label: "Order Subtotal",
          orderAmount: "\$42.97",
        ),
        const SizedBox(
          height: 3,
        ),
        const CartDetailsRowWidget(
          label: "Discount",
          orderAmount: "\$0",
        ),
        const SizedBox(
          height: 3,
        ),
        const CartDetailsRowWidget(
          label: "Shipping",
          orderAmount: "\$8",
        ),
        const Divider(
          endIndent: 12,
          indent: 12,
          height: 34,
          color: Colors.grey,
        ),
        CartDetailsRowWidget(
          label: "Total",
          orderAmount: "\$50.97",
          textStyle: Styles.style24(context),
        ),
      ],
    );
  }
}

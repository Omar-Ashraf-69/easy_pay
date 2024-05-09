import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:easy_pay/core/widgets/custom_appbar.dart';
import 'package:easy_pay/core/widgets/custom_button.dart';
import 'package:easy_pay/features/presentation/views/widgets/cart_payment_details.dart';
import 'package:easy_pay/features/presentation/views/widgets/mycart_payment_container.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "My Cart",
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
        child: Column(
          children: [
            MyCartImageAndDetialsContainer(),
            SizedBox(
              height: 25,
            ),
            CartPaymentDetials(),
            SizedBox(
              height: 12,
            ),
            CustomPayButton(
              label: "Complete Payment",
            ),
          ],
        ),
      ),
    );
  }
}

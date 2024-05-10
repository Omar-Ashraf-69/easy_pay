import 'package:easy_pay/core/widgets/custom_appbar.dart';
import 'package:easy_pay/core/widgets/custom_button.dart';
import 'package:easy_pay/features/presentation/views/widgets/cart_payment_details.dart';
import 'package:easy_pay/features/presentation/views/widgets/mycart_payment_container.dart';
import 'package:easy_pay/features/presentation/views/widgets/payment_methods_bottom_sheet.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
        child: Column(
          children: [
            const MyCartImageAndDetialsContainer(),
            const SizedBox(
              height: 25,
            ),
            const CartPaymentDetials(),
            const SizedBox(
              height: 12,
            ),
            CustomPayButton(
              label: "Complete Payment",
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const PaymentDetailsView(),
                //     ),);
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  context: context,
                  builder: (context) {
                    return const PaymentMethodsButtomSheet();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

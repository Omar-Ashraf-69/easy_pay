import 'package:easy_pay/features/presentation/views/widgets/custom_pay_button_consumer.dart';
import 'package:easy_pay/features/presentation/views/widgets/payment_methods_list.dart';
import 'package:flutter/material.dart';

class PaymentMethodsButtomSheet extends StatelessWidget {
  const PaymentMethodsButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsList(),
          SizedBox(
            height: 32,
          ),
          CustomPayButtonConsumer(),
        ],
      ),
    );
  }
}

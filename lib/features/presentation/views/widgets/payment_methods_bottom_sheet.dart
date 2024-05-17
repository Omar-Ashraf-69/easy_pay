import 'package:easy_pay/core/utils/stripe_services.dart';
import 'package:easy_pay/core/widgets/custom_button.dart';
import 'package:easy_pay/features/data/models/payment_intent_input_model.dart';
import 'package:easy_pay/features/presentation/views/widgets/payment_methods_list.dart';
import 'package:flutter/material.dart';

class PaymentMethodsButtomSheet extends StatelessWidget {
  const PaymentMethodsButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentMethodsList(),
          const SizedBox(
            height: 32,
          ),
          CustomPayButton(
            label: 'Continue',
            onTap: () async {
              await StripeServices().makePayment(
                paymentDetails: const PaymentIntentInputModel(
                    currency: 'usd', amount: '50'),
              );
            },
          ),
        ],
      ),
    );
  }
}

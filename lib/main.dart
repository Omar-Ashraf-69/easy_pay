import 'package:easy_pay/features/presentation/views/my_cart_view.dart';
import 'package:easy_pay/features/presentation/views/payment_details_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EasyPay());
}

class EasyPay extends StatelessWidget {
  const EasyPay({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentDetailsView(),
    );
  }
}

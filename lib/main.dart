import 'package:easy_pay/features/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // set the publishable key for Stripe - this is mandatory
  Stripe.publishableKey =
      'pk_test_51PFQuMP5JEiIcvkamGVB5Lw5Msu7XSAlFfrLMmWEtGQn6CmnIiRmNXfQAVAwgXUsKswrVt2ZHQOX0duW1MpDTNrN00GhKLbkkZ';
  runApp(const EasyPay());
}

class EasyPay extends StatelessWidget {
  const EasyPay({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

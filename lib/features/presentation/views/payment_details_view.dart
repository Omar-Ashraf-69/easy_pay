import 'package:easy_pay/features/presentation/views/widgets/payment_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentDetailsViewBody(),
    );
  }
}
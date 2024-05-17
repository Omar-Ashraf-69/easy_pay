import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:easy_pay/features/presentation/views/widgets/check_out_info_list.dart';
import 'package:easy_pay/features/presentation/views/widgets/custom_divider.dart';
import 'package:easy_pay/features/presentation/views/widgets/total_price_row.dart';
import 'package:flutter/material.dart';

class ThankYouAndCheckOutDetailsSection extends StatelessWidget {
  const ThankYouAndCheckOutDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Thank You!",
          style: Styles.styles25(context),
        ),
        Text(
          "Your transaction was successful",
          style: Styles.style20(context),
        ),
        const SizedBox(
          height: 32,
        ),
        const CheckOutInfoList(),
        const CustomDivider(),
        const TotalPriceRowWidget(
          amount: '50.97',
        ),
      ],
    );
  }
}

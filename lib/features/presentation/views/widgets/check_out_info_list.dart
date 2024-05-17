import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:easy_pay/features/presentation/views/widgets/custom_details_row.dart';
import 'package:flutter/material.dart';

class CheckOutInfoList extends StatelessWidget {
  const CheckOutInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsRowWidget(
          label: 'Date',
          details: '11/05/2024',
          detailsStyle: Styles.styleBold18(context),
        ),
        const SizedBox(
          height: 12,
        ),
        DetailsRowWidget(
          label: 'Time',
          details: '04:09 PM',
          detailsStyle: Styles.styleBold18(context),
        ),
        const SizedBox(
          height: 12,
        ),
        DetailsRowWidget(
          label: 'To',
          details: 'Omar Ashraf',
          detailsStyle: Styles.styleBold18(context),
        ),
      ],
    );
  }
}

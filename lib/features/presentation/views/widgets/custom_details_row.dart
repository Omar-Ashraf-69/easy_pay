import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';

class DetailsRowWidget extends StatelessWidget {
  const DetailsRowWidget(
      {super.key,
      required this.label,
      required this.details,
      this.labelStyle,
      this.detailsStyle});
  final String label, details;
  final TextStyle? labelStyle, detailsStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: labelStyle ?? Styles.style18(context),
        ),
        Text(
          details,
          style: detailsStyle ?? Styles.style18(context),
        ),
      ],
    );
  }
}

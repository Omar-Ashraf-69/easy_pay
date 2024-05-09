
import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';

class CartDetailsRowWidget extends StatelessWidget {
  const CartDetailsRowWidget({
    super.key,
    required this.label,
    required this.orderAmount,
    this.textStyle,
  });
  final String orderAmount, label;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: textStyle ?? Styles.style18(context),
        ),
        Text(
          orderAmount,
          style: textStyle ?? Styles.style18(context),
        ),
      ],
    );
  }
}

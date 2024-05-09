
import 'package:easy_pay/features/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsList extends StatefulWidget {
  @override
  const PaymentMethodsList({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PaymentMethodItem(
          image: widget.images[0],
          onTap: () {
            selectedIndex = 0;
            setState(() {});
          },
          isActive: selectedIndex == 0,
        ),
        const SizedBox(
          width: 16,
        ),
        PaymentMethodItem(
          image: widget.images[1],
          onTap: () {
            selectedIndex = 1;
            setState(() {});
          },
          isActive: selectedIndex == 1,
        ),
      ],
    );
  }
}

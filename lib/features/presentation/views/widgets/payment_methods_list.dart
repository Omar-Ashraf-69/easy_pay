
import 'package:easy_pay/core/utils/app_images.dart';
import 'package:easy_pay/features/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsList extends StatefulWidget {
  @override
  const PaymentMethodsList({
    super.key,
  });


  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  int selectedIndex = 0;
  final List<String> images = const [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PaymentMethodItem(
          image: images[0],
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
          image: images[1],
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

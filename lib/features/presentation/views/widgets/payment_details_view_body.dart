import 'package:easy_pay/core/utils/app_images.dart';
import 'package:easy_pay/core/widgets/custom_appbar.dart';
import 'package:easy_pay/features/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});
  final List<String> images = const [
    Assets.imagesCard,
    Assets.imagesPaypal,
    Assets.imagesMasterCard,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Payment Details'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
        child: Column(
          children: [
            PaymentMethodsList(images: images),
            // Row(
            //   children: images
            //       .asMap()
            //       .entries
            //       .map(
            //         (e) => Expanded(
            //           child: Padding(
            //             padding: e.key == 1
            //                 ? const EdgeInsets.all(12.0)
            //                 : EdgeInsets.zero,
            //             child: Container(
            //               padding: const EdgeInsets.symmetric(
            //                   vertical: 18, horizontal: 12),
            //               decoration: ShapeDecoration(
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(15),
            //                   side: BorderSide(
            //                     width: 1.5,
            //                     color: Colors.grey.withOpacity(0.8),
            //                   ),
            //                 ),
            //                 shadows: [
            //                   BoxShadow(
            //                       blurRadius: 4,
            //                       blurStyle: BlurStyle.outer,
            //                       color: Colors.green,
            //                       offset: Offset(0, 0),
            //                       spreadRadius: 0),
            //                 ],
            //               ),
            //               child: Center(
            //                 child: SvgPicture.asset(
            //                   e.value,
            //                   height: 30,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       )
            //       .toList(),
            // ),
          ],
        ),
      ),
    );
  }
}

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
          width: 12,
        ),
        PaymentMethodItem(
          image: widget.images[1],
          onTap: () {
            selectedIndex = 1;
            setState(() {});
          },
          isActive: selectedIndex == 1,
        ),
        const SizedBox(
          width: 12,
        ),
        PaymentMethodItem(
          image: widget.images[2],
          onTap: () {
            selectedIndex = 2;
            setState(() {});
          },
          isActive: selectedIndex == 2,
        ),
      ],
    );
  }
}

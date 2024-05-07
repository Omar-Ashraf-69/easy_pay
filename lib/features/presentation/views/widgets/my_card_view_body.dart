import 'package:easy_pay/core/utils/app_images.dart';
import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: Styles.styles25(context),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 22),
        child: Column(
          children: [
            MyCartImageAndDetialsContainer(),
            SizedBox(
              height: 16,
            ),
            CartPaymentDetials(),
            SizedBox(
              height: 12,
            ),
            CustomPayButton(
              label: "Complete Payment",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPayButton extends StatelessWidget {
  const CustomPayButton({
    super.key,
    required this.label,
  });

  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: const Color(0xFF34A853),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CartPaymentDetials extends StatelessWidget {
  const CartPaymentDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CartDetailsRowWidget(
          label: "Order Subtotal",
          orderAmount: "\$42.97",
        ),
        const CartDetailsRowWidget(
          label: "Discount",
          orderAmount: "\$0",
        ),
        const CartDetailsRowWidget(
          label: "Shipping",
          orderAmount: "\$8",
        ),
        const SizedBox(
          height: 6,
        ),
        const Divider(
          endIndent: 12,
          indent: 12,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 8,
        ),
        CartDetailsRowWidget(
          label: "Total",
          orderAmount: "\$50.97",
          textStyle: Styles.style24(context),
        ),
      ],
    );
  }
}

class MyCartImageAndDetialsContainer extends StatelessWidget {
  const MyCartImageAndDetialsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Image.asset(Assets.imagesBasketImage),
          ),
        ),
        Positioned(
          top: 12,
          right: 10,
          child: Card(
            elevation: 10,
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                color: const Color(0xFFEDEDED),
              ),
              padding: const EdgeInsets.all(12),
              width: MediaQuery.sizeOf(context).width * 0.55,
              child: Column(
                children: [
                  Text(
                    "Kinetic Sand Dino Dig Playset",
                    style: Styles.style18(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                width: 0.3,
                                strokeAlign: 1,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  '-',
                                  style: Styles.style18(context),
                                ),
                              ),
                              SizedBox(
                                height: 45,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  indent: 7,
                                  endIndent: 7,
                                ),
                              ),
                              Text(
                                '1',
                                style: Styles.style18(context),
                              ),
                              SizedBox(
                                height: 45,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  indent: 7,
                                  endIndent: 7,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  '+',
                                  style: Styles.style18(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "\$19.99",
                          style: Styles.style20(context).copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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

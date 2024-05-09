import 'package:easy_pay/core/utils/app_images.dart';
import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MyCartImageAndDetialsContainer extends StatelessWidget {
  const MyCartImageAndDetialsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Center(
            child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Image.asset(Assets.imagesBasketImage)),
          ),
          const Positioned(
            top: 12,
            right: 10,
            child: CartDetailsPopUpWidget(),
          ),
        ],
      ),
    );
  }
}

class CartDetailsPopUpWidget extends StatelessWidget {
  const CartDetailsPopUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                const ItemCounterWidget(),
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
    );
  }
}

class ItemCounterWidget extends StatelessWidget {
  const ItemCounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '-',
                style: Styles.style18(context),
              ),
            ),
            const SizedBox(
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
            const SizedBox(
              height: 45,
              child: VerticalDivider(
                color: Colors.grey,
                indent: 7,
                endIndent: 7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '+',
                style: Styles.style18(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BarcodePaidRow extends StatelessWidget {
  const BarcodePaidRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          FontAwesomeIcons.barcode,
          weight: 50,
          size: 50,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0xFF32A84F), width: 1.5),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Text(
            "PAID",
            style: Styles.style24(context)
                .copyWith(color: const Color(0xFF32A84F)),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xffd9d9d9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

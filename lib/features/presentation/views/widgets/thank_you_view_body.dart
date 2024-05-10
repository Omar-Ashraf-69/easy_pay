import 'package:easy_pay/features/presentation/views/widgets/custom_check_icon.dart';
import 'package:easy_pay/features/presentation/views/widgets/custom_dashed_line.dart';
import 'package:easy_pay/features/presentation/views/widgets/sided_circle_avatar.dart';
import 'package:easy_pay/features/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ThankYouCard(),
              CustomDashedLine(),
              SidedCircleAvatar(
                isRightCircle: false,
              ),
              SidedCircleAvatar(
                isRightCircle: true,
              ),
              CustomCheckIcon(),
            ],
          ),
        ),
      ),
    );
  }
}

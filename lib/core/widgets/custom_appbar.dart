import 'package:easy_pay/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
    {required BuildContext context, required String title}) {
  return AppBar(
    title: Text(
      title,
      style: Styles.styles25(context),
    ),
    centerTitle: true,
    surfaceTintColor: Colors.transparent,
  );
}

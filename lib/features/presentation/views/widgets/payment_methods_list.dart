import 'package:easy_pay/core/utils/app_images.dart';
import 'package:easy_pay/features/presentation/manager/selecting_payment_method/selecting_payment_method_cubit.dart';
import 'package:easy_pay/features/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodsList extends StatelessWidget {
  final List<String> images = const [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];

  const PaymentMethodsList({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectingPaymentMethodCubit,
        SelectingPaymentMethodState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
            PaymentMethodItem(
              image: images[0],
              onTap: () {
                BlocProvider.of<SelectingPaymentMethodCubit>(context)
                    .changeIndex(0);
              },
              isActive: BlocProvider.of<SelectingPaymentMethodCubit>(context)
                      .selectedIndex ==
                  0,
            ),
            const SizedBox(
              width: 16,
            ),
            PaymentMethodItem(
              image: images[1],
              onTap: () {
                BlocProvider.of<SelectingPaymentMethodCubit>(context)
                    .changeIndex(1);
              },
              isActive: BlocProvider.of<SelectingPaymentMethodCubit>(context)
                      .selectedIndex ==
                  1,
            ),
          ],
        );
      },
    );
  }
}

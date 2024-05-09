import 'package:easy_pay/core/utils/app_images.dart';
import 'package:easy_pay/core/widgets/custom_appbar.dart';
import 'package:easy_pay/core/widgets/custom_button.dart';
import 'package:easy_pay/features/presentation/views/widgets/custom_credit_card.dart';
import 'package:easy_pay/features/presentation/views/widgets/payment_methods_list.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final List<String> images = const [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Payment Details'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: PaymentMethodsList(images: images),),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 12,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomCreditCard(
                formKey: formKey,
                autovalidateMode: autovalidateMode,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  CustomPayButton(
                    label: 'Pay',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

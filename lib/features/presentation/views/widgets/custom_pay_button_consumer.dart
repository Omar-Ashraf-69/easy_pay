import 'dart:developer';

import 'package:easy_pay/core/utils/api_keys.dart';
import 'package:easy_pay/core/widgets/custom_button.dart';
import 'package:easy_pay/features/data/models/items_list_model/item.dart';
import 'package:easy_pay/features/data/models/items_list_model/items_list_model.dart';
import 'package:easy_pay/features/data/models/payment_amount_model/details.dart';
import 'package:easy_pay/features/data/models/payment_amount_model/payment_amount_model.dart';
import 'package:easy_pay/features/presentation/manager/checkout_cubit/checkout_cubit.dart';
import 'package:easy_pay/features/presentation/manager/checkout_cubit/checkout_states.dart';
import 'package:easy_pay/features/presentation/views/thank_you_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CustomPayButtonConsumer extends StatelessWidget {
  const CustomPayButtonConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentStates>(
      listener: (context, state) {
        if (state is StripePaymentSuccessState) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ThankYouView(),
            ),
          );
        } else if (state is StripePaymentErrorState) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomPayButton(
          label: 'Continue',
          isLoading: state is StripePaymentLoadingState,
          onTap: () async {
            var transactions = getTransactions();

            excutePaypalPayment(context, transactions);
            // await BlocProvider.of<StripePaymentCubit>(context).makePayment(
            //   paymentDetails: const PaymentIntentInputModel(
            //       currency: 'usd',
            //       amount: '15',
            //       customerId: 'cus_Q7ki8LMHjORSSw'),
            // );
          },
        );
      },
    );
  }

  void excutePaypalPayment(
      BuildContext context,
      ({
        OrderItemsListModel orderItems,
        PaymentAmountModel paymentAmount
      }) transactions) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: ApiKeys.paypaleClientId,
          secretKey: ApiKeys.paypaleSecertKey,
          transactions: [
            {
              "amount": transactions.paymentAmount.toJson(),
              "description": "The payment transaction description.",
              "item_list": transactions.orderItems.toJson(),
            }
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ThankYouView(),
              ),
            );
          },
          onError: (error) {
            log("onError: $error");
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            );
          },
          onCancel: () {
            log('cancelled:');
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  ({OrderItemsListModel orderItems, PaymentAmountModel paymentAmount})
      getTransactions() {
    PaymentAmountModel paymentAmountModel = PaymentAmountModel(
      currency: 'USD',
      total: '100',
      details: PaymentAmountDetailsModel(
          shipping: '0', shippingDiscount: 0, subtotal: '100'),
    );
    List<OrderItemModel> items = [
      OrderItemModel(
        currency: 'USD',
        name: 'Apple',
        price: '5',
        quantity: 10,
      ),
      OrderItemModel(
        currency: 'USD',
        name: 'Apple',
        price: '10',
        quantity: 5,
      ),
    ];
    OrderItemsListModel orderItemsListModel = OrderItemsListModel(
      items: items,
    );
    return (
      paymentAmount: paymentAmountModel,
      orderItems: orderItemsListModel,
    );
  }
}

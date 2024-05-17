import 'package:dio/dio.dart';
import 'package:easy_pay/features/data/models/payment_intent_input_model.dart';
import 'package:easy_pay/core/utils/api_keys.dart';
import 'package:easy_pay/core/utils/api_service.dart';
import 'package:easy_pay/features/data/models/payment_init_model/payment_init_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeServices {
  String baseUrl = 'https://api.stripe.com/v1/';
  Future<PaymentIntentModel> createPaymentIntent(
      {required PaymentIntentInputModel payment}) async {
    ApiService apiService = ApiService(Dio());
    Map<String, dynamic> response = await apiService.post(
      url: '${baseUrl}payment_intents',
      body: payment.toJson(),
      token: ApiKeys.secertKey,
    );
    return PaymentIntentModel.fromJson(response);
  }

  Future<void> initPaymentSheet({
    required PaymentIntentInputModel payment,
  }) async {
    PaymentIntentModel paymentIntentModel =
        await createPaymentIntent(payment: payment);
    // 2. initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Main params
        merchantDisplayName: 'Example Demo',
        paymentIntentClientSecret: paymentIntentModel.clientSecret,
      ),
    );
  }

  // 3. display payment sheet
  Future<void> makePayment({
    required PaymentIntentInputModel paymentDetails,
  }) async {
    await initPaymentSheet(payment: paymentDetails);
    await Stripe.instance.presentPaymentSheet();
  }
}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_pay/core/errors/failure.dart';
import 'package:easy_pay/core/utils/api_service.dart';
import 'package:easy_pay/core/utils/stripe_services.dart';
import 'package:easy_pay/features/data/models/payment_intent_input_model.dart';
import 'package:easy_pay/features/data/repos/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentDetails}) async {
    try {
      await StripeServices(ApiService(Dio()))
          .makePayment(paymentDetails: paymentDetails);

      return right(null);
    } catch (e) {
      return left(ServerFailure(error: e.toString()));
    }
  }
}

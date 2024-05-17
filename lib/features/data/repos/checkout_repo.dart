import 'package:dartz/dartz.dart';
import 'package:easy_pay/core/errors/failure.dart';
import 'package:easy_pay/features/data/models/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentDetails,
  });
}

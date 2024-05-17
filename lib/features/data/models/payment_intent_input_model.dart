class PaymentIntentInputModel {
  final String currency;
  final String amount;

  const PaymentIntentInputModel({required this.currency, required this.amount});

  toJson() {
    return {
      'amount': "${amount}00",
      'currency': currency,
    };
  }
}

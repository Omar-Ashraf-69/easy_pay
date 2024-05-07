import 'package:flutter/material.dart';

void main() {
  runApp(const EasyPay());
}

class EasyPay extends StatelessWidget {
  const EasyPay({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Text("Hello, World"),
    );
  }
}
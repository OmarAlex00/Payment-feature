import 'package:checkout_feature/features/payment_feature/presentation/screens/my_cart_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentFeature());
}

class PaymentFeature extends StatelessWidget {
  const PaymentFeature({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartScreen(),
    );
  }
}
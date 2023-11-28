import 'package:checkout_feature/core/widgets/custom_app_bar.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_complete_body.dart';
import 'package:flutter/material.dart';

class PaymentCompleteScreen extends StatelessWidget {
  const PaymentCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: const PaymentCompleteBody(),
    );
  }
}

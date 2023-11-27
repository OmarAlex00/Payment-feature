import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/widgets/custom_app_bar.dart';
import 'package:checkout_feature/features/payment_feature/data/models/payment_gateway.dart';
import 'package:flutter/material.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: AppStrings.paymentDetails),
      body: const PaymentDetailsBody(),
    );
  }
}

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});
  final List<PaymentGateWay> gateways = const [];
  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}

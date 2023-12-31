import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/widgets/custom_app_bar.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_details_body.dart';
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

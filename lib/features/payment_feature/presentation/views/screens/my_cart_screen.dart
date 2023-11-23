import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/widgets/custom_app_bar.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/my_cart_screen_body.dart';
import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: AppStrings.myCartTitle),
      body: const MyCartScreenBody(),
    );
  }
}

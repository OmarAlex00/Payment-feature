import 'package:checkout_feature/core/utils/app_colors.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/check_mark_circle.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/custom_dashed_divider.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/thank_you_container.dart';
import 'package:flutter/material.dart';

class PaymentCompleteBody extends StatelessWidget {
  const PaymentCompleteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50, top: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouContainer(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .25 - 20,
            left: -18,
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.primaryBackground,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .25 - 20,
            right: -18,
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.primaryBackground,
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CheckMarkCircle(),
          ),
          Positioned(
              bottom: (MediaQuery.of(context).size.height * .25) - 5,
              left: 25,
              right: 25,
              child: const CustomDashedDivider()),
        ],
      ),
    );
  }
}

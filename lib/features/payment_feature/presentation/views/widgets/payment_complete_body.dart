import 'package:checkout_feature/core/utils/app_colors.dart';
import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/custom_dashed_divider.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/thank_you_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCompleteBody extends StatelessWidget {
  const PaymentCompleteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
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
          Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.paymentSuccessBody,
              child: CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.buttonsColors,
                  child: SvgPicture.asset(AssetManager.checkMarkPath)),
            ),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * .25,
              left: 25,
              right: 25,
              child: const CustomDashedDivider()),
        ],
      ),
    );
  }
}

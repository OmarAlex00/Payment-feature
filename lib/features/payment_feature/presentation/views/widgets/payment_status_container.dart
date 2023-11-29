import 'package:checkout_feature/core/utils/app_colors.dart';
import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PaymentStatusContainer extends StatelessWidget {
  const PaymentStatusContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 58,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.50, color: AppColors.buttonsColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          AppStrings.paid,
          style: AppTextStyles.style24.copyWith(color: AppColors.buttonsColors),
        ),
      ),
    );
  }
}

import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PaymentCompleteInfoRow extends StatelessWidget {
  const PaymentCompleteInfoRow({
    super.key,
    required this.title,
    required this.secondary,
  });
  final String title;
  final String secondary;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.style18,
        ),
        Text(
          secondary,
          style: AppTextStyles.style18Bold,
        )
      ],
    );
  }
}

import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCompleteCard extends StatelessWidget {
  const PaymentCompleteCard({
    super.key,
    required this.cardType,
    required this.cardLogo,
    required this.cardBankType,
    required this.cardLastDigits,
  });
  final String cardType, cardLogo, cardBankType, cardLastDigits;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(cardLogo),
          const SizedBox(
            width: 23,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardType,
                style: AppTextStyles.style18,
              ),
              Text(
                '$cardBankType $cardLastDigits',
                style: AppTextStyles.style16,
              )
            ],
          )
        ],
      ),
    );
  }
}

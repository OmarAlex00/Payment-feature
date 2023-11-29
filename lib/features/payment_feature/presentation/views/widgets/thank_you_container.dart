import 'package:checkout_feature/core/utils/app_colors.dart';
import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/custom_divider.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/order_total_row.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_complete_card.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_complete_info_row.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_status_row.dart';
import 'package:flutter/material.dart';

class ThankYouContainer extends StatelessWidget {
  const ThankYouContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: AppColors.paymentSuccessBody,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .07, right: 23, left: 23),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.thankYouTitle,
              style: AppTextStyles.style25,
            ),
            Text(
              AppStrings.thankYouBody,
              style: AppTextStyles.style20light,
            ),
            Spacer(
              flex: 2,
            ),
            PaymentCompleteInfoRow(
              title: AppStrings.date,
              secondary: '01/24/2023',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentCompleteInfoRow(
              title: AppStrings.time,
              secondary: '10:15 AM',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentCompleteInfoRow(
              title: AppStrings.to,
              secondary: 'Sam Louis',
            ),
            SizedBox(
              height: 20,
            ),
            CustomDivider(),
            SizedBox(
              height: 20,
            ),
            OrderTotalRow(cost: r'$50.97'),
            Spacer(
              flex: 1,
            ),
            PaymentCompleteCard(
              cardType: 'Credit Card',
              cardLogo: AssetManager.masterCardPath,
              cardBankType: 'Mastercard',
              cardLastDigits: '**78',
            ),
            Spacer(
              flex: 2,
            ),
            PaymentStatusRow(),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

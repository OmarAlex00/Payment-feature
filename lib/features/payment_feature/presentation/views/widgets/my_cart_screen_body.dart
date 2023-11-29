import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:checkout_feature/core/widgets/custom_button.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/custom_divider.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/order_info_row.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/order_total_row.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_gate_way_bottom_sheet.dart';
import 'package:flutter/material.dart';

class MyCartScreenBody extends StatelessWidget {
  const MyCartScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Image.asset(AssetManager.cartImagePath)),
        const OrderInfoRow(
          title: AppStrings.orderSubTotal,
          cost: r'$42.97',
        ),
        const OrderInfoRow(title: AppStrings.discount, cost: r'$0'),
        const OrderInfoRow(title: AppStrings.shipping, cost: r'$8'),
        const CustomDivider(
          indent: 35,
          endIndent: 35,
        ),
        const OrderTotalRow(
          padding: 20,
          cost: r'$50.97',
        ),
        CustomButton(
          title: AppStrings.completePayment,
          onTap: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                context: context,
                builder: (context) => const PaymentGateWayBottomSheet());
          },
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

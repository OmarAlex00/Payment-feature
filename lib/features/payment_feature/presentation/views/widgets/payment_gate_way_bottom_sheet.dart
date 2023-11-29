import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/widgets/custom_button.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/screens/payment_details_screen.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/close_bottom_sheet_icon.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_gateways_list_view.dart';
import 'package:flutter/material.dart';

class PaymentGateWayBottomSheet extends StatelessWidget {
  const PaymentGateWayBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CloseBottomSheetIcon(),
        const PaymentGateWaysListView(),
        CustomButton(
          title: AppStrings.confirm,
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const PaymentDetailsScreen(),
          )),
        )
      ],
    );
  }
}

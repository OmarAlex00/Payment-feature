import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_status_container.dart';
import 'package:flutter/material.dart';

class PaymentStatusRow extends StatelessWidget {
  const PaymentStatusRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetManager.testBarCodePath),
        const PaymentStatusContainer()
      ],
    );
  }
}

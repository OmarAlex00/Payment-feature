import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/widgets.dart';

class OrderTotalRow extends StatelessWidget {
  const OrderTotalRow({
    super.key,
    required this.cost,
    this.padding,
  });
  final String cost;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0),
      child: Row(
        children: [
          const Text(
            AppStrings.total,
            style: AppTextStyles.style24,
          ),
          const Spacer(),
          Text(
            cost,
            style: AppTextStyles.style24,
          )
        ],
      ),
    );
  }
}

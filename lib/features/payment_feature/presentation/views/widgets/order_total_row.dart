import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/widgets.dart';

class OrderTotalRow extends StatelessWidget {
  const OrderTotalRow({
    super.key,
    required this.cost,
  });
  final String cost;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
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

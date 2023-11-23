import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/widgets.dart';

class OrderInfoRow extends StatelessWidget {
  const OrderInfoRow({
    super.key,
    required this.title,
    required this.cost,
  });
  final String title;
  final String cost;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextStyles.style18,
          ),
          const Spacer(),
          Text(
            cost,
            style: AppTextStyles.style18,
          )
        ],
      ),
    );
  }
}

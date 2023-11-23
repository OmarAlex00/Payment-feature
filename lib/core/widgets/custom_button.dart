import 'package:checkout_feature/core/utils/app_colors.dart';
import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        height: 73,
        decoration: ShapeDecoration(
          color: AppColors.buttonsColors,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.style22,
          ),
        ),
      ),
    );
  }
}

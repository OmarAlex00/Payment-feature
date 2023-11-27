import 'package:checkout_feature/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentGateWayItem extends StatelessWidget {
  const PaymentGateWayItem({
    super.key,
    required this.img,
    required this.isSelected,
    this.onTap,
  });
  final String img;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 25),
        width: 103,
        height: 50,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: isSelected ? 2.5 : 1.5,
                color: isSelected
                    ? AppColors.buttonsColors
                    : AppColors.blackWithOpacity),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: isSelected
                  ? AppColors.buttonsColors
                  : AppColors.primaryBackground,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(child: SvgPicture.asset(img)),
      ),
    );
  }
}

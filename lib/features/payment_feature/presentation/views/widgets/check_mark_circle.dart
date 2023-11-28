import 'package:checkout_feature/core/utils/app_colors.dart';
import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckMarkCircle extends StatelessWidget {
  const CheckMarkCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: AppColors.paymentSuccessBody,
      child: CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.buttonsColors,
          child: SvgPicture.asset(AssetManager.checkMarkPath)),
    );
  }
}

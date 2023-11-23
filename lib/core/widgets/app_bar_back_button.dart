import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarBackButton extends StatelessWidget {
  const CustomAppBarBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Center(
        child: SvgPicture.asset(
          AssetManager.backButtonPath,
        ),
      ),
    );
  }
}

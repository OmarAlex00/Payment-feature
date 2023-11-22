import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:flutter/widgets.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.style25,
    );
  }
}

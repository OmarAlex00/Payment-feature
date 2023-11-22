import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/utils/app_text_styles.dart';
import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:checkout_feature/core/utils/widgets/app_bar_back_button.dart';
import 'package:checkout_feature/core/utils/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarTitle(
            title: AppStrings.myCartTitle,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const CustomAppBarBackButton()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.asset(AssetManager.cartImagePath)),
          const OrderInfoRow(
            title: AppStrings.orderSubTotal,
            cost: r'$42.97',
          ),
        ],
      ),
    );
  }
}

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
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

import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:checkout_feature/features/payment_feature/data/models/payment_gateway.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_gateway_item.dart';
import 'package:flutter/material.dart';

class PaymentGateWaysListView extends StatefulWidget {
  const PaymentGateWaysListView({super.key});

  @override
  State<PaymentGateWaysListView> createState() =>
      _PaymentGateWaysListViewState();
}

class _PaymentGateWaysListViewState extends State<PaymentGateWaysListView> {
  final List<PaymentGateWay> gateways = [
    PaymentGateWay(
        name: AppStrings.creditCard, imageSource: AssetManager.creditCardPath),
    PaymentGateWay(
        name: AppStrings.paypal, imageSource: AssetManager.payPalPath),
    PaymentGateWay(
        name: AppStrings.applePAy, imageSource: AssetManager.applePayPath)
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SizedBox(
        height: 62,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: gateways.length,
          itemBuilder: (context, index) => PaymentGateWayItem(
            img: gateways[index].imageSource,
            isSelected: activeIndex == index ? true : false,
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}

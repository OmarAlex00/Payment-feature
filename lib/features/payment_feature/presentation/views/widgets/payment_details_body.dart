import 'dart:developer';

import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/widgets/custom_button.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/screens/payment_complete_screen.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/credit_card_payment_form.dart';
import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_gateways_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({
    super.key,
  });

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentGateWaysListView()),
        SliverToBoxAdapter(
          child: CreditCardPaymentForm(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              title: AppStrings.pay,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PaymentCompleteScreen(),
                  ));
                  log('Success');
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),
        )
      ],
    );
  }
}

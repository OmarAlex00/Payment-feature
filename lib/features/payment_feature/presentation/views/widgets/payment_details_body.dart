import 'dart:developer';

import 'package:checkout_feature/core/utils/app_strings.dart';
import 'package:checkout_feature/core/widgets/custom_button.dart';
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
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PaymentGateWaysListView(),
          CreditCardPaymentForm(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
          CustomButton(
            title: AppStrings.pay,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                log('Success');
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          )
        ],
      ),
    );
  }
}

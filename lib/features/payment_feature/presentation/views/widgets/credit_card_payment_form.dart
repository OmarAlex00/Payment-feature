import 'package:checkout_feature/core/utils/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardPaymentForm extends StatefulWidget {
  const CreditCardPaymentForm(
      {super.key, required this.autovalidateMode, required this.formKey});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<CreditCardPaymentForm> createState() => _CreditCardPaymentFormState();
}

class _CreditCardPaymentFormState extends State<CreditCardPaymentForm> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBack = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          backgroundImage: AssetManager.creditFramePath,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBack,
          onCreditCardWidgetChange: (creditCardBrand) {},
        ),
        CreditCardForm(
            autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (value) {
              cardHolderName = value.cardHolderName;
              cardNumber = value.cardNumber;
              expiryDate = value.expiryDate;
              cvvCode = value.cvvCode;
              showBack = value.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formKey)
      ],
    );
  }
}

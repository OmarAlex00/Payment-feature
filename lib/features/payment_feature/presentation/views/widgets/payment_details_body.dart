import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_gateways_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [const PaymentGateWaysListView(), CreditCardPaymentForm()],
      ),
    );
  }
}

class CreditCardPaymentForm extends StatefulWidget {
  final GlobalKey<FormState> formKey = GlobalKey();

  CreditCardPaymentForm({super.key});
  @override
  State<CreditCardPaymentForm> createState() => _CreditCardPaymentFormState();
}

class _CreditCardPaymentFormState extends State<CreditCardPaymentForm> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBack = false;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBack,
          onCreditCardWidgetChange: (creditCardBrand) {},
        ),
        CreditCardForm(
            autovalidateMode: autovalidateMode,
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

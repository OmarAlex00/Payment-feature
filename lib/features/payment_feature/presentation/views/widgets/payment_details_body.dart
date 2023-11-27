import 'package:checkout_feature/features/payment_feature/presentation/views/widgets/payment_gateways_list_view.dart';
import 'package:flutter/widgets.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentGateWaysListView(),
      ],
    );
  }
}

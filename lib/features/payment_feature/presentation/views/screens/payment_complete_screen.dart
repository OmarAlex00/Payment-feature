import 'package:checkout_feature/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentCompleteScreen extends StatelessWidget {
  const PaymentCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: const PaymentCompleteBody(),
    );
  }
}

class PaymentCompleteBody extends StatelessWidget {
  const PaymentCompleteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Stack(
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .25 - 20,
            left: -18,
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .25 - 20,
            right: -18,
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

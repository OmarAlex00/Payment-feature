import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFC6C6C6),
      thickness: 2,
      indent: 35,
      endIndent: 35,
      height: 30,
    );
  }
}

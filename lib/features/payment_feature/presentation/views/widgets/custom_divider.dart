import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.indent,
    this.endIndent,
  });
  final double? indent, endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: const Color(0xFFC6C6C6),
      thickness: 2,
      indent: indent ?? 0,
      endIndent: endIndent ?? 0,
      height: 30,
    );
  }
}

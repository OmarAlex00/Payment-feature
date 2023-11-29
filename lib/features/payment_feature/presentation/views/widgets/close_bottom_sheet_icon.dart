import 'package:flutter/material.dart';

class CloseBottomSheetIcon extends StatelessWidget {
  const CloseBottomSheetIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: const Padding(
        padding: EdgeInsets.only(right: 10, top: 10),
        child: Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.close),
        ),
      ),
    );
  }
}

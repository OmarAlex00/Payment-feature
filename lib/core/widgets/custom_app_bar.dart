import 'package:checkout_feature/core/widgets/app_bar_back_button.dart';
import 'package:checkout_feature/core/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

AppBar buildCustomAppBar({final String? title}) {
  return AppBar(
      title: AppBarTitle(
        title: title ?? '',
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: const CustomAppBarBackButton());
}

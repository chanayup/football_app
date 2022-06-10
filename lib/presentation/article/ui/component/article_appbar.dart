import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

AppBar get articleAppBar {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () => Get.back(),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConstraint.white.withOpacity(0.2),
            shape: BoxShape.circle
          ),
          child: Image.asset(
            'assets/icons/arrow-left2.png',
            width: 24,
            height: 24,
            color: ColorConstraint.white,
          ),
        ),
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 12),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: ColorConstraint.white.withOpacity(0.2),
              shape: BoxShape.circle
            ),
            child: Image.asset(
              'assets/icons/share.png',
              width: 24,
              height: 24,
              color: ColorConstraint.white,
            ),
          ),
        ),
      )
    ],
  );
}
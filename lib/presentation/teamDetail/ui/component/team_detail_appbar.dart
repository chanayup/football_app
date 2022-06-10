import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

AppBar get teamDetailAppBar => AppBar(
  automaticallyImplyLeading: false,
  leading: IconButton(
    onPressed: ()=> Get.back(),
    icon: ImageIcon(
      AssetImage('assets/icons/arrow-left2.png'),
      size: 24,
      color: ColorConstraint.white,
    ),
  ),
  title: Text(
    'UEFA Champions League',
    style: TextStyle(
      fontSize: 24,
      fontFamily: 'Source Sans Pro',
      fontWeight: FontWeight.w600,
      color: ColorConstraint.white,
    ),
  ),
  centerTitle: true,
);
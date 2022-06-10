import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

AppBar get homeAppBar => AppBar(
  automaticallyImplyLeading: false,
  title: Padding(
    padding: const EdgeInsets.only(left: 12),
    child: Text('LiveScore',
    style: TextStyle(
      fontSize: 24,
      fontFamily: 'Source Sans Pro',
      fontWeight: FontWeight.normal,
      color: ColorConstraint.white,
    ),),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Image.asset(
        'assets/icons/search.png',
        width: 24,
        height: 24,
        color: ColorConstraint.white,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Image.asset(
        'assets/icons/notification.png',
        width: 24,
        height: 24,
        color: ColorConstraint.white,
      ),
    ),
  ],
);
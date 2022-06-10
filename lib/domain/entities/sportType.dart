import 'package:flutter/cupertino.dart';

class SportType {
  final String title;
  final String image;
   bool isSelect;
  final Color colorPrimary;
  final Color colorSecondary;

  SportType({required this.title, required this.image, required this.isSelect,required this.colorPrimary,required this.colorSecondary});
}
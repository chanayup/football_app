import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class NormalTextFieldWidget extends StatefulWidget {

  final String title;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String imageLeading;

  const NormalTextFieldWidget({
    Key? key,
    required this.title,
    required this.controller,
    required this.focusNode,
    required this.imageLeading
  }) : super(key: key);

  @override
  State<NormalTextFieldWidget> createState() => NormalTextFieldWidgetState();
}

class NormalTextFieldWidgetState extends State<NormalTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 23, horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: ColorConstraint.white, width: 2),
          ),
          prefixIcon: ImageIcon(
            AssetImage(widget.imageLeading),
            size: 16,
            color: (widget.focusNode.hasFocus || widget.controller.text.isNotEmpty) ? ColorConstraint.white : ColorConstraint.grey2,
          ),
          hintText: widget.title,
          hintStyle: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorConstraint.grey2
          ),
          fillColor: ColorConstraint.black2,
          filled: true
      ),
      cursorColor: ColorConstraint.white,
      style: TextStyle(
          fontFamily: 'Source Sans Pro',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorConstraint.white
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
  }
}


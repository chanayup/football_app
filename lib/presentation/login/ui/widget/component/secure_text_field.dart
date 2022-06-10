import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class SecureTextField extends StatefulWidget {

  final String title;
  final String imageLeading;
  final String imageTrailing;
  final TextEditingController controller;
  final FocusNode focusNode;

  const SecureTextField({
    Key? key,
    required this.title,
    required this.controller,
    required this.focusNode,
    required this.imageLeading,
    required this.imageTrailing
  }) : super(key: key);

  @override
  State<SecureTextField> createState() => SecureTextFieldState();
}

class SecureTextFieldState extends State<SecureTextField> {

  bool isSecureText = true;

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
            color: (widget.focusNode.hasFocus || widget.controller.text.isNotEmpty ) ? ColorConstraint.white : ColorConstraint.grey2,
          ),
          prefixIconColor: ColorConstraint.grey2,
          suffixIcon: GestureDetector(
            onTap: ()=> setState(() {
              isSecureText = !isSecureText;
            }),
            child: ImageIcon(
              AssetImage(widget.imageTrailing),
              size: 20,
              color: ( isSecureText )? ColorConstraint.white : ColorConstraint.grey2,
            ),
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
      obscureText: isSecureText,
      cursorColor: ColorConstraint.white,
      style: TextStyle(
          fontFamily: 'Source Sans Pro',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorConstraint.white
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
    );
  }
}

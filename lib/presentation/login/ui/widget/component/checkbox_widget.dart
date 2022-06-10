import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class CheckboxWidget extends StatefulWidget {

  final String title;

  const CheckboxWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<CheckboxWidget> createState() => CheckboxWidgetState();
}

class CheckboxWidgetState extends State<CheckboxWidget> {

  bool isCheck = true;

  void toggleCheckBox(bool? value) {
    if (value != null) {
      setState(() {
        isCheck = value;
      });
    } else {
      isCheck = !isCheck;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isCheck,
      onChanged: toggleCheckBox,
      contentPadding: const EdgeInsets.only(left: 0, top: 8, bottom: 8),
      title: Text(
        widget.title,
        style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: (isCheck) ? ColorConstraint.white : ColorConstraint.grey2
        ),
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

}

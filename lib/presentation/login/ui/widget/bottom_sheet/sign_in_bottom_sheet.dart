import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class SignInBottomSheet extends StatefulWidget {

  final Function() onPressedSignIn;
  final Function() onPressedRegister;
  final Widget widgetEmail;
  final Widget widgetPassword;
  final Widget widgetCheckBox;

  const SignInBottomSheet({
    Key? key,
    required this.widgetCheckBox,
    required this.widgetEmail,
    required this.widgetPassword,
    required this.onPressedSignIn,
    required this.onPressedRegister,
  }) : super(key: key);

  @override
  State<SignInBottomSheet> createState() => _SignInBottomSheetState();
}

class _SignInBottomSheetState extends State<SignInBottomSheet> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final bottom = MediaQuery.of(context).viewInsets.bottom;

    return GestureDetector(
      onTap: () => unFocusTextField(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(46)
            )
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: bottom),
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                width: size.height*0.2,
                height: 5,
                decoration: BoxDecoration(
                    color: ColorConstraint.grey1,
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Welcome',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.white
                ),
              ),
            ),
            widget.widgetEmail,
            SizedBox(height: 16,),
            widget.widgetPassword,
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 32, top: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: widget.widgetCheckBox,
                  ),

                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: ColorConstraint.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorConstraint.blue,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
              onPressed: widget.onPressedSignIn,
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorConstraint.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have account? ',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onPressedRegister,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorConstraint.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void unFocusTextField() => FocusManager.instance.primaryFocus?.unfocus();
}


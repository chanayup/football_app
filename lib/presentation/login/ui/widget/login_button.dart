import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class LoginButton extends StatelessWidget {

  final Function() onPressedSignIn;
  final Function() onPressedSingUp;

  const LoginButton({
    Key? key,
    required this.onPressedSignIn,
    required this.onPressedSingUp
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 28,),
        child: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorConstraint.blue,
                  padding: EdgeInsets.symmetric(horizontal: 73, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
              onPressed: onPressedSignIn,
              child: Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.white
                ),
              ),
            ),

            SizedBox(width: 39,),

            InkWell(
              onTap: onPressedSingUp,
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.normal,
                    color: ColorConstraint.grey1
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

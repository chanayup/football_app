import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 32, left: 40, right: 28, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Text(
                'Discover all\nabout sport',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.white
                ),
                textAlign: TextAlign.start,
              ),
            ),

            SizedBox(height: 14,),

            Flexible(
              flex: 1,
              child: Text(
                "Search millions of jobs and get the inside scoop on companies. Wait for what? Let\’s get start it!",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.normal,
                    color: ColorConstraint.grey2
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


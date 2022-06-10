import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 48, top: 64, right: 36, bottom: 0),
        child: Image(
            width: 300,
            height: 300,
            image: AssetImage('assets/images/splashscreen.png')
        ),
      ),
    );
  }
}


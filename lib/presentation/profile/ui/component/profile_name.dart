import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ProfileName extends StatefulWidget {
  const ProfileName({ Key? key }) : super(key: key);

  @override
  _ProfileNameState createState() => _ProfileNameState();
}

class _ProfileNameState extends State<ProfileName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Brian Imanuel',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w600,
              color: ColorConstraint.white
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 6,),
          Text(
            '#YNWK till the end 🔥',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.normal,
              color: ColorConstraint.white
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({ Key? key }) : super(key: key);

  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {

  int selectedIndex = 0;

  List<String> headers = ["My Profile", "Activity", "Setting"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            headerItem(0, headers[0]),
            headerItem(1, headers[1]),
            headerItem(2, headers[2]),
          ],
        ),
      )
    );
  }

  Widget headerItem (int index, String title) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: ()=> setState(()=> selectedIndex = index),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: (selectedIndex == index) ? [ColorConstraint.gradient1, ColorConstraint.gradient2] : [ColorConstraint.black2, ColorConstraint.black2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.w600,
            color: ColorConstraint.white
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({ Key? key }) : super(key: key);

  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 100,
        height: 100,
        child: Stack(
          children: [
            Positioned.fill(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: ColorConstraint.black1,
                  shape: BoxShape.circle
                ),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: ColorConstraint.grey1,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: (){},
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors:  [ColorConstraint.grey1, ColorConstraint.gradient2],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                    ),
                  ),
                  child: Image.asset(
                    'assets/icons/edit.png',
                    width: 14,
                    height: 14,
                    color: ColorConstraint.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
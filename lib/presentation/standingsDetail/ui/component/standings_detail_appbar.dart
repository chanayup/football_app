import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class StandingAppBarWidget extends StatefulWidget {
  const StandingAppBarWidget({ Key? key }) : super(key: key);

  @override
  _StandingAppBarWidgetState createState() => _StandingAppBarWidgetState();
}

class _StandingAppBarWidgetState extends State<StandingAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: ImageIcon(
                      AssetImage('assets/icons/arrow-left2.png'),
                      size: 24,
                      color: ColorConstraint.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/spain.png',
                        height: 18,
                        width: 18,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        'Spain',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstraint.white
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class TeamDetailScore extends StatefulWidget {
  const TeamDetailScore({ Key? key }) : super(key: key);

  @override
  _TeamDetailScoreState createState() => _TeamDetailScoreState();
}

class _TeamDetailScoreState extends State<TeamDetailScore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xff2B2B3D)),
                    color: ColorConstraint.black1,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset(
                    'assets/images/atletico-madrid.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Arsenal',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '2 - 3',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.white,
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  '90.15',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xff2B2B3D)),
                    color: ColorConstraint.black1,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset(
                    'assets/images/atletico-madrid.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Arsenal',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.white,
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
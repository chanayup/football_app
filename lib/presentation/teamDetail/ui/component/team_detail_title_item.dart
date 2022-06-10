import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class TeamDetailHeadItems extends StatefulWidget {
  const TeamDetailHeadItems({ Key? key }) : super(key: key);

  @override
  _TeamDetailHeadItemsState createState() => _TeamDetailHeadItemsState();
}

class _TeamDetailHeadItemsState extends State<TeamDetailHeadItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(
                colors: [ColorConstraint.gradient1, ColorConstraint.gradient2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            child: Text(
              'Match Detail',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(
                colors: [ColorConstraint.black2, ColorConstraint.black2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            child: Text(
              'Line Up',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              gradient: LinearGradient(
                colors: [ColorConstraint.black2, ColorConstraint.black2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            child: Text(
              'H2H',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
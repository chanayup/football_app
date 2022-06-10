import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class StandingsDetailHeader extends StatefulWidget {
  const StandingsDetailHeader({ Key? key }) : super(key: key);

  @override
  _StandingsDetailHeaderState createState() => _StandingsDetailHeaderState();
}

class _StandingsDetailHeaderState extends State<StandingsDetailHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
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
              'All',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white
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
                colors: [ColorConstraint.gradient1, ColorConstraint.gradient2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            child: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: ColorConstraint.black2
            ),
            child: Text(
              'Away',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
        ],
      ),
    );
  }
}
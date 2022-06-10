import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class StandingsDetailStateInfo extends StatefulWidget {
  const StandingsDetailStateInfo({ Key? key }) : super(key: key);

  @override
  _StandingsDetailStateInfoState createState() => _StandingsDetailStateInfoState();
}

class _StandingsDetailStateInfoState extends State<StandingsDetailStateInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorConstraint.black1,
                ),
                child: Image.asset(
                  'assets/images/1200px-LaLiga 4.png',
                  width: 75,
                  height: 75,
                ),
              )
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 6, bottom: 16),
              child: Text(
                'La Liga',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: ColorConstraint.white
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class StandingsHeadItems extends StatefulWidget {
  const StandingsHeadItems({ Key? key }) : super(key: key);

  @override
  _StandingsHeadItemsState createState() => _StandingsHeadItemsState();
}

class _StandingsHeadItemsState extends State<StandingsHeadItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 10),
        height: 35,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '#',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 12,),
                      Text(
                        'Team',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'D',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'L',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Ga',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Gd',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Pts',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),                
            Spacer(),
            Divider(color: Color(0xff2B2B3D),height: 5,)
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class StandingsList extends StatefulWidget {
  const StandingsList({ Key? key }) : super(key: key);

  @override
  _StandingsListState createState() => _StandingsListState();
}

class _StandingsListState extends State<StandingsList> {
  @override
  Widget build(BuildContext context) {
    return playerItems();
  }

  Widget playerItems () {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 12,),
                  Image.asset(
                    'assets/images/atletico-madrid.png',
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(width: 8,),
                  Text(
                    'Atlético Madrid',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '2',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '6',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '23',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '38',
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
      ),
    );
  }

}
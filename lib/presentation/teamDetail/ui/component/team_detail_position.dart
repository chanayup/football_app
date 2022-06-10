import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class TeamDetailPosition extends StatefulWidget {
  const TeamDetailPosition({ Key? key }) : super(key: key);

  @override
  _TeamDetailPositionState createState() => _TeamDetailPositionState();
}


class PlayerPosition {
  final String name;
  final String number;
  final String position;

  PlayerPosition({required this.name, required this.number, required this.position});

}

class TeamPlayer {
  final String teamName;
  final  String image;
  final List<PlayerPosition> player;

  TeamPlayer({required this.teamName, required this.image, required this.player});

}

class Match {
  final TeamPlayer player1;
  final TeamPlayer player2;
  final String scorePlayer1;
  final String scorePlayer2;
  final double time;

  Match({required this.player1, required this.player2, required this.scorePlayer1, required this.scorePlayer2, required this.time});
}

class _TeamDetailPositionState extends State<TeamDetailPosition> {

  PlayerPosition player1 = PlayerPosition(name: 'Lacazette', number: '8', position: 'Shooting');
  PlayerPosition player2 = PlayerPosition(name: 'Aubameyang', number: '22', position: 'Attacks');
  PlayerPosition player3 = PlayerPosition(name: 'Saka', number: '42', position: 'Possesion');
  PlayerPosition player4 = PlayerPosition(name: 'SmithRowe', number: '43', position: 'Cards');
  PlayerPosition player5 = PlayerPosition(name: 'Xhaka', number: '3', position: 'Corners');

  var arsenal;
  var aston_villa;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Shooting',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '12',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '22',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Attacks',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '29',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '42',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Possesion',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '58',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Cards',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '5',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Corners',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '7',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
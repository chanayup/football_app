import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/dashboard/controller/dashboard_controller.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class SportListWidget extends StatefulWidget {
  const SportListWidget({ Key? key }) : super(key: key);

  @override
  _SportListWidgetState createState() => _SportListWidgetState();
}

class Player {
  final String image;
  final String name;

  Player({required this.image,required this.name});

}

class Match {
  final String bannerImage;
  final String stationName;
  final String country;
  final Player player1;
  final Player player2;
  final int scorePlayer1;
  final int scorePlayer2;
  final String signal;

  Match({
    required this.bannerImage,
    required this.stationName,
    required this.country, 
    required this.player1, 
    required this.player2, 
    required this.scorePlayer1, 
    required this.scorePlayer2, 
    required this.signal
  });
  
}

class _SportListWidgetState extends State<SportListWidget> {


  List<Match> matchList = [
    Match(
      bannerImage: 'assets/images/spain.png',
      stationName: 'La Liga',
      country: 'Spain',
      player1: Player(image: 'assets/images/barcelona.png', name: 'Barcelona'),
      player2: Player(image: 'assets/images/realmadrid.png', name: 'Real Madrid'),
      scorePlayer1: 2,
      scorePlayer2: 0,
      signal: 'HT'
    ),
    Match(
      bannerImage: 'assets/images/england.png',
      stationName: 'Premier League',
      country: 'England',
      player1: Player(image: 'assets/images/aston-villa.png', name: 'Aston Villa'),
      player2: Player(image: 'assets/images/liverpool.png', name: 'Liverpool'),
      scorePlayer1: 2,
      scorePlayer2: 3,
      signal: 'FT'
    ),
  ];

  final dashBoardController = Get.find<DashBoardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          matchItem(matchList[0]),
          matchItem(matchList[1]),
        ],
      )
    );
  }

  Widget matchItem(Match match) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 24),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 5,),
              Image.asset(
                match.bannerImage,
                width: 24,
                height: 24,
              ),
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    match.stationName,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white
                    ),
                  ),
                  Text(
                    match.country,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.normal,
                      color: Color(0xffAAAAAA)
                    ),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: ()=>Get.toNamed('/team-detail'),
                icon: ImageIcon(
                  AssetImage('assets/icons/arrow-right2.png'),
                  color: ColorConstraint.white,
                  size: 16,
                ),
              )
            ],
          ),
          SizedBox(height: 14,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xff2B2B3D)
            ),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: 72,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 42,
                          bottom: 0,
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorConstraint.black1,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                match.player2.image
                              ),
                            )
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorConstraint.black1,
                              border: Border.all(width: 3, color: Color(0xff2B2B3D)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                match.player1.image
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              match.player1.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                color: ColorConstraint.white
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '${match.scorePlayer1}',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                color: ColorConstraint.white
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'vs',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstraint.white
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstraint.white
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              match.player2.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                color: ColorConstraint.white
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '${match.scorePlayer2}',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                color: ColorConstraint.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(16)
                          )
                        ),
                        primary: Color(0xff222232)
                      ),
                      onPressed: (){},
                      child: Text(
                        match.signal,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                          color: ColorConstraint.white,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
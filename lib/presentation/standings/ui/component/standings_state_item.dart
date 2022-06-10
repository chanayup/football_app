import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class StandingStateItems extends StatefulWidget {
  const StandingStateItems({ Key? key }) : super(key: key);

  @override
  _StandingStateItemsState createState() => _StandingStateItemsState();
}

class Station {
  final List<Player> players;
  final String imageFlag;
  final String station;
  final String country;

  Station({ required this.players, required this.imageFlag, required this.station, required this.country});
}

class Player {
  final String image;
  final String name;
  final String d;
  final String l;
  final String ga;
  final String gd;
  final String pts;

  Player({required this.image, required this.name, required this.d, required this.l, required this.ga, required this.gd, required this.pts});
}

class _StandingStateItemsState extends State<StandingStateItems> {

  Player atletico_madrid = Player(image: 'assets/images/atletico-madrid.png', name: 'Atlético Madrid', d: '2', l: '1', ga: '6', gd: '23', pts: '38');
  Player real_madrid = Player(image: 'assets/images/realmadrid.png', name: 'Real Madrid', d: '4', l: '3', ga: '7', gd: '15', pts: '37');
  Player barcelona = Player(image: 'assets/images/barcelona.png', name: 'Barcelona', d: '4', l: '4', ga: '9', gd: '20', pts: '34');
  Player villareal = Player(image: 'assets/images/villareal.png', name: 'Villareal', d: '8', l: '2', ga: '10', gd: '16', pts: '32');

  Player liverpool = Player(image: 'assets/images/liverpool.png', name: 'Liverpool', d: '6', l: '2', ga: '21', gd: '16', pts: '33');
  Player manUnited = Player(image: 'assets/images/man-united.png', name: 'Real Madrid', d: '4', l: '3', ga: '7', gd: '15', pts: '37');
  Player leicesterCity = Player(image: 'assets/images/leicester_city.png', name: 'Barcelona', d: '4', l: '4', ga: '9', gd: '20', pts: '34');

  List<Player> playerState1 = [];
  List<Player> playerState2 = [];

  List<Station> stations = [];


  @override
  void initState() {
    super.initState();  
    playerState1 = [ atletico_madrid, real_madrid, barcelona, villareal ];
    playerState2 = [ liverpool, manUnited, leicesterCity, atletico_madrid ];

    stations = [
      Station(
        players: playerState1,
        imageFlag: 'assets/images/spain.png',
        station: 'La Liga',
        country: 'Spain'
      ),
      Station(
        players: playerState2,
        imageFlag: 'assets/images/england.png',
        station: 'Premier League',
        country: 'England'
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [

          stationWidget(stations[0]),
          stationWidget(stations[1])

        ],
      ),
    );

  }

  Widget stationWidget(Station station) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              alignment: Alignment.center,
              height: 28,
              width: 28,
              child: Image.asset(
                station.imageFlag,
                fit: BoxFit.contain,
              ),
            ),
            title: Text(
              station.station,
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white
              ),
            ),
            subtitle: Text(
              station.country,
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: ColorConstraint.grey2
              ),
            ),
            trailing: IconButton(
              onPressed: () => Get.toNamed('/standings-detail'),
              icon: ImageIcon(
                AssetImage('assets/icons/arrow-right2.png'),
                size: 16,
                color: ColorConstraint.white,
              ),
            )
            
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: ColorConstraint.black1
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Team',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: ColorConstraint.white
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'D',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstraint.white
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'L',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstraint.white
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Ga',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstraint.white
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Gd',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstraint.white
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Pts',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: ColorConstraint.white
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(color: ColorConstraint.black2,),
                  playerItemWidget(station.players[0]),
                  playerItemWidget(station.players[1]),
                  playerItemWidget(station.players[2]),
                  playerItemWidget(station.players[3]),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }

  Widget playerItemWidget(Player player) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  player.image,
                  width: 16,
                  height: 16,
                ),
                SizedBox(width: 9,),
                Text(
                  player.name,
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstraint.white
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
              ],
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    player.d,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    player.l,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    player.ga,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    player.gd,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    player.pts,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
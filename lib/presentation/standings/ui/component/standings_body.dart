import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/explore/ui/component/explore_sport_header.dart';
import 'package:football_app_test/presentation/standings/ui/component/standings_state_item.dart';

class StandingsBodyWidget extends StatefulWidget {
  const StandingsBodyWidget({ Key? key }) : super(key: key);

  @override
  _StandingsBodyWidgetState createState() => _StandingsBodyWidgetState();
}

class _StandingsBodyWidgetState extends State<StandingsBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        SizedBox(height: 14,),
        ExploreSportHeader(),
        StandingStateItems()
      ],
    );
  }
}
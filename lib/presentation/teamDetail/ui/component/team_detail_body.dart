import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/teamDetail/ui/component/team_detail_position.dart';
import 'package:football_app_test/presentation/teamDetail/ui/component/team_detail_score.dart';
import 'package:football_app_test/presentation/teamDetail/ui/component/team_detail_title_item.dart';

class TeamDetailBodyWidget extends StatefulWidget {
  const TeamDetailBodyWidget({ Key? key }) : super(key: key);

  @override
  _TeamDetailBodyWidgetState createState() => _TeamDetailBodyWidgetState();
}

class _TeamDetailBodyWidgetState extends State<TeamDetailBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 32),
      child: Column(
        children: [

          TeamDetailScore(),
          SizedBox(height: 32,),
          TeamDetailHeadItems(),

          Expanded(
            child: ListView(
              children: [
                TeamDetailPosition(),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
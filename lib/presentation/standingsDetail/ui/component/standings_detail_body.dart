import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/standingsDetail/ui/component/standinds_detail_header.dart';
import 'package:football_app_test/presentation/standingsDetail/ui/component/standinds_detail_list.dart';
import 'package:football_app_test/presentation/standingsDetail/ui/component/standings_detail_image_info.dart';
import 'package:football_app_test/presentation/standingsDetail/ui/component/standings_detail_list_header.dart';

class StandingBodyWidget extends StatefulWidget {
  const StandingBodyWidget({ Key? key }) : super(key: key);

  @override
  _StandingBodyWidgetState createState() => _StandingBodyWidgetState();
}

class _StandingBodyWidgetState extends State<StandingBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          StandingsDetailStateInfo(),
          StandingsDetailHeader(),
          StandingsHeadItems(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),
          StandingsList(),

        ],
      ),
    );
  }
}
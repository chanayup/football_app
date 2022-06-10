import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/standingsDetail/ui/component/standings_detail_appbar.dart';
import 'package:football_app_test/presentation/standingsDetail/ui/component/standings_detail_body.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class StandingsDetailPage extends StatefulWidget {
  const StandingsDetailPage({ Key? key }) : super(key: key);

  @override
  _StandingsDetailPageState createState() => _StandingsDetailPageState();
}

class _StandingsDetailPageState extends State<StandingsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorConstraint.black2,
      body: ListView(
        children: [
          StandingAppBarWidget(),
          StandingBodyWidget(),
        ],
      )
    );
  }
}
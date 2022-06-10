import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:football_app_test/presentation/teamDetail/ui/component/team_detail_appbar.dart';
import 'package:football_app_test/presentation/teamDetail/ui/component/team_detail_body.dart';

class TeamDetailPage extends StatefulWidget {
  const TeamDetailPage({ Key? key }) : super(key: key);

  @override
  _TeamDetailPageState createState() => _TeamDetailPageState();
}

class _TeamDetailPageState extends State<TeamDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: teamDetailAppBar,
      body: TeamDetailBodyWidget(),
      backgroundColor: ColorConstraint.black2,
    );
  }
}
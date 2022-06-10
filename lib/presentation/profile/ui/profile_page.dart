import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/profile/ui/component/profile_body.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: ColorConstraint.black2,
      body: ProfileBodyWidget(),
    );
  }
}
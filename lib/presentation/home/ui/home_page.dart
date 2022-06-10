import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/home/ui/component/home_appbar.dart';
import 'package:football_app_test/presentation/style/color.dart';

import 'component/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraint.black2,
      appBar: homeAppBar,
      body: HomeBodyWidget()
    );
  }

}
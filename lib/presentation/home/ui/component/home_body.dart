import 'package:flutter/material.dart';

import 'home_banner.dart';
import 'home_sport_header.dart';
import 'home_sport_list.dart';

class HomeBodyWidget extends StatefulWidget {
  const HomeBodyWidget({ Key? key }) : super(key: key);

  @override
  _HomeBodyWidgetState createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
              
          HomeBannerWidget(),
          SportHeader(),
          SportListWidget()
    
        ],
      ),
    );
  }
}
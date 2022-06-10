import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/explore/ui/component/explore_new_image.dart';
import 'package:football_app_test/presentation/explore/ui/component/explore_new_list.dart';
import 'package:football_app_test/presentation/explore/ui/component/explore_sport_header.dart';

class ExploreBodyWidget extends StatefulWidget {
  const ExploreBodyWidget({ Key? key }) : super(key: key);

  @override
  _ExploreBodyWidgetState createState() => _ExploreBodyWidgetState();
}

class _ExploreBodyWidgetState extends State<ExploreBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ExploreSportHeader(),
          ExploreNewsList(),
          ExploreNewImages(),
          
          SizedBox(height: 32,)
        ],
      ),
    );
  }
}
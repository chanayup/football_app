import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/profile/ui/component/profile_header.dart';
import 'package:football_app_test/presentation/profile/ui/component/profile_image.dart';
import 'package:football_app_test/presentation/profile/ui/component/profile_item.dart';
import 'package:football_app_test/presentation/profile/ui/component/profile_name.dart';

class ProfileBodyWidget extends StatefulWidget {
  const ProfileBodyWidget({ Key? key }) : super(key: key);

  @override
  _ProfileBodyWidgetState createState() => _ProfileBodyWidgetState();
}

class _ProfileBodyWidgetState extends State<ProfileBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileImage(),
          ProfileName(),
          ProfileHeader(),
          ProfileItems()
        ],
      ),
    );
  }
}
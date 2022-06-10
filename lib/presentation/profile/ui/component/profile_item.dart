import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ProfileItems extends StatefulWidget {
  const ProfileItems({ Key? key }) : super(key: key);

  @override
  _ProfileItemsState createState() => _ProfileItemsState();
}

class ItemProfile {
  final String icon;
  final String title;
  final String description;

  ItemProfile({required this.icon, required this.title, required this.description});

}

class _ProfileItemsState extends State<ProfileItems> {

  final List<ItemProfile> _items = [
    ItemProfile(
      icon: 'assets/icons/profile.png',
      title: 'Name',
      description: 'Brian Imanuel'
    ),
    ItemProfile(
      icon: 'assets/icons/message.png',
      title: 'Email',
      description: 'brians213@gmail.com'
    ),
    ItemProfile(
      icon: 'assets/icons/call.png',
      title: 'Phone',
      description: '+62 821 560 641'
    ),
    ItemProfile(
      icon: 'assets/icons/location.png',
      title: 'Address',
      description: 'Long beach, California'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: ListView(
          children: [
            profileItemWidget(_items[0]),
            profileItemWidget(_items[1]),
            profileItemWidget(_items[2]),
            profileItemWidget(_items[3]),
            SizedBox(height: 32,)
          ],
        )
      ),
    );
  }
  
  Widget profileItemWidget (ItemProfile item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: ColorConstraint.black1,
          child: Image.asset(
            item.icon,
            width: 16,
            height: 16,
            color: ColorConstraint.grey1,
          ),
        ),
        title: Text(
          item.title,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.w600,
            color: ColorConstraint.white
          ),
        ),
        subtitle: Text(
          item.description,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.normal,
            color: ColorConstraint.grey1
          ),
        ),
        trailing: Image.asset(
          'assets/icons/arrow-right2.png',
          width: 18,
          height: 18,
          color: ColorConstraint.grey1,
        ),
      ),
    );
  }
}
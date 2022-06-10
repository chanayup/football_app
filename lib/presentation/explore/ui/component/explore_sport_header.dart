import 'package:flutter/material.dart';
import 'package:football_app_test/domain/entities/sportType.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ExploreSportHeader extends StatefulWidget {
  const ExploreSportHeader({ Key? key }) : super(key: key);

  @override
  _ExploreSportHeaderState createState() => _ExploreSportHeaderState();
}

class _ExploreSportHeaderState extends State<ExploreSportHeader> {


  int isSelectIndex = 0;

  List<SportType> _sportType = [
    SportType(title: 'Soccer', image: 'assets/images/soccer.png', isSelect: false, colorPrimary: Colors.blue.shade300, colorSecondary: Colors.blue.shade800),
    SportType(title: 'Basketball', image: 'assets/images/basketball.png', isSelect: false, colorPrimary: Colors.orange.shade300, colorSecondary: Colors.orange.shade800),
    SportType(title: 'Football', image: 'assets/images/football.png', isSelect: false, colorPrimary: Colors.deepOrange.shade300, colorSecondary: Colors.deepOrange.shade800),
    SportType(title: 'Baseball', image: 'assets/images/baseball.png', isSelect: false, colorPrimary: Colors.red.shade300, colorSecondary: Colors.red.shade800),
    SportType(title: 'Tennis', image: 'assets/images/tennis.png', isSelect: false, colorPrimary: Colors.green.shade300, colorSecondary: Colors.green.shade800),
    SportType(title: 'Volleyball', image: 'assets/images/volleyball.png', isSelect: false, colorPrimary: Colors.yellow.shade300, colorSecondary: Colors.yellow.shade800),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SportHeaderItem(0, _sportType[0]),
            SportHeaderItem(1, _sportType[1]),
            SportHeaderItem(2, _sportType[2]),
            SportHeaderItem(3, _sportType[3]),
            SportHeaderItem(4, _sportType[4]),
            SportHeaderItem(5, _sportType[5]),
          ],
        ),
      ),
    );
  }

  Widget SportHeaderItem (int index, SportType sportType) {
    double leftSpacing = 0, rightSpacing = 0;
    if (index == 0) {
      leftSpacing = 28;
      rightSpacing = 8;
    } else if (index == _sportType.indexOf(_sportType.last)) {
      leftSpacing = 8;
      rightSpacing = 28;
    } else {
      leftSpacing = 8;
      rightSpacing = 8;
    }
    return Padding(
      padding: EdgeInsets.only(left: leftSpacing, right: rightSpacing),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () => setState(()=> isSelectIndex = index),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: (isSelectIndex == index) ? [sportType.colorPrimary, sportType.colorSecondary] : [ColorConstraint.black1, ColorConstraint.black1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                sportType.image,
                width: 24,
                height: 24,
                color: (isSelectIndex == index) ? ColorConstraint.white : sportType.colorSecondary,
              ),
              (isSelectIndex == index) 
              ? Row(
                children: [
                  SizedBox(width: 12,),
                  Text(
                    sportType.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white
                    ),
                  )
                ],
              )
              : Container()
            ],
          ),
        ),
      ),
    );
  }

}
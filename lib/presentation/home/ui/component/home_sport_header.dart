import 'package:flutter/material.dart';
import 'package:football_app_test/domain/entities/sportType.dart';
import 'package:football_app_test/presentation/style/color.dart';

class SportHeader extends StatefulWidget {
  const SportHeader({ Key? key }) : super(key: key);

  @override
  _SportHeaderState createState() => _SportHeaderState();
}

class _SportHeaderState extends State<SportHeader> {

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
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            sportTypeItemWidget(0, _sportType[0]),
            sportTypeItemWidget(1, _sportType[1]),
            sportTypeItemWidget(2, _sportType[2]),
            sportTypeItemWidget(3, _sportType[3]),
            sportTypeItemWidget(4, _sportType[4]),
            sportTypeItemWidget(5, _sportType[5]),

          ],
        ),
      ),
    );
  }

  Widget sportTypeItemWidget(int index,SportType sportType) {

    double leftSpace = 0, rightSpace = 0;
    if (index == 0) {
      leftSpace = 24;
      rightSpace = 7;
    } else if (index == _sportType.indexOf(_sportType.last)) {
      leftSpace = 7;
      rightSpace = 24;
    } else {
      leftSpace = 7;
      rightSpace = 7;
    }

    return Padding(
      padding: EdgeInsets.only(left: leftSpace, right: rightSpace),
      child: InkWell(
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        onTap: ()=> setState(()=> isSelectIndex = index),
        child: Container(
          width: 108,
          height: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: (isSelectIndex == index) ? [sportType.colorPrimary, sportType.colorSecondary] : [ColorConstraint.black1, ColorConstraint.black1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                sportType.image,
                width: 40,
                height: 40,
                color: (isSelectIndex == index) ? ColorConstraint.white : sportType.colorSecondary,
              ),
              SizedBox(height: 12,),
              Text(
                sportType.title,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w600,
                  color: ColorConstraint.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
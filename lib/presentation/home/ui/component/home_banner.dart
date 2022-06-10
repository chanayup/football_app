import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class HomeBannerWidget extends StatefulWidget {
  const HomeBannerWidget({ Key? key }) : super(key: key);

  @override
  _HomeBannerWidgetState createState() => _HomeBannerWidgetState();
}

class _HomeBannerWidgetState extends State<HomeBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, bottom: 12),
      width: double.infinity,
      height: 180,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ColorConstraint.blue, Color(0xff193EB7), Color(0xff0C0C69)],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(16)
              ),
            ),
          ),
          Positioned.fill(
            bottom: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16)
                ),
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/images/football-banner.png'),
                )
              ),
            ),
          ),
          Positioned(
            top: 21,
            bottom: 0,
            left: 18,
            child: Container(
              width: 300,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ColorConstraint.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/soccer.png',
                              width: 8,
                              height: 8,
                            ),
                            SizedBox(width: 4,),
                            Text(
                              'Soccer',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                color: ColorConstraint.black2
                              ),
                            )
                          ],
                        ),
                      ),
                  ),
          
                  SizedBox(height: 8,),
        
                  Text(
                    'Liverpool UEFA\nChampion League\nCelebration',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white
                    ),
                  ),
        
                  SizedBox(height: 8,),
        
                  Text(
                    'Yesterday, 06.30 PM',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.normal,
                      color: ColorConstraint.white
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
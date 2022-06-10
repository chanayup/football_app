import 'package:flutter/material.dart';
import 'package:football_app_test/domain/entities/sportType.dart';
import 'package:football_app_test/presentation/splash/ui/component/sport_type.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {

  List<SportType> sportType = [
    SportType(title: 'Soccer', image: 'assets/images/soccer.png', isSelect: false, colorPrimary: Colors.blue.shade300, colorSecondary: Colors.blue.shade800),
    SportType(title: 'Basketball', image: 'assets/images/basketball.png', isSelect: false, colorPrimary: Colors.orange.shade300, colorSecondary: Colors.orange.shade800),
    SportType(title: 'Football', image: 'assets/images/football.png', isSelect: false, colorPrimary: Colors.deepOrange.shade300, colorSecondary: Colors.deepOrange.shade800),
    SportType(title: 'Baseball', image: 'assets/images/baseball.png', isSelect: false, colorPrimary: Colors.red.shade300, colorSecondary: Colors.red.shade800),
    SportType(title: 'Tennis', image: 'assets/images/tennis.png', isSelect: false, colorPrimary: Colors.green.shade300, colorSecondary: Colors.green.shade800),
    SportType(title: 'Volleyball', image: 'assets/images/volleyball.png', isSelect: false, colorPrimary: Colors.yellow.shade300, colorSecondary: Colors.yellow.shade800),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraint.black2,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 32,),

            Text(
              'What sport do\nyou interest?',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w600,
                color: ColorConstraint.white
              ),
            ),
            
            SizedBox(height: 14,),

            Text(
              'You can choose more than one',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.normal,
                color: ColorConstraint.grey2
              ),
              textAlign: TextAlign.start,
            ),

            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SportTypeWidget(sportType: sportType[0]),
                      SportTypeWidget(sportType: sportType[1]),
                      SportTypeWidget(sportType: sportType[2]),
                    ],
                  ),
                  SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SportTypeWidget(sportType: sportType[3]),
                      SportTypeWidget(sportType: sportType[4]),
                      SportTypeWidget(sportType: sportType[5]),
                    ],
                  ),
                ],
              ),
            ),
            
            Expanded(
              flex: 1,
              child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ColorConstraint.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                          ),
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32)
                        ),
                        onPressed: ()=> Get.toNamed('/dashboard'),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                            color: ColorConstraint.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Text(
                              'Skip',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.normal,
                                color: ColorConstraint.white,
                              ),
                              textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }

}
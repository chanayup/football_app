import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class ArticleBodyWidget extends StatefulWidget {
  const ArticleBodyWidget({ Key? key }) : super(key: key);

  @override
  _ArticleBodyWidgetState createState() => _ArticleBodyWidgetState();
}

class _ArticleBodyWidgetState extends State<ArticleBodyWidget> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: size.width,
            height: size.height * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage(Get.arguments.toString()),
                fit: BoxFit.cover
              )
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 300,
                      child: Text(
                        'Arsenal vs Aston Villa prediction',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                            CircleAvatar(
                              backgroundColor: ColorConstraint.black1,
                              child: Image.asset(
                                'assets/icons/profile.png',
                                width: 37,
                                height: 37,
                                color: ColorConstraint.grey1,
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Brian Imanuel',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                    color: ColorConstraint.white
                                  ),
                                ),
                                Text(
                                  'May 15, 2020',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.normal,
                                    color: ColorConstraint.grey1
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/heart.png',
                              width: 18,
                              height: 18,
                              color: ColorConstraint.white,
                            ),
                            SizedBox(width: 8,),
                            Text(
                              '1403',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.normal,
                                color: ColorConstraint.white
                              ),
                            ),
                            SizedBox(width: 16,),
                            Image.asset(
                              'assets/icons/chat.png',
                              width: 18,
                              height: 18,
                              color: ColorConstraint.white,
                            ),
                            SizedBox(width: 8,),
                            Text(
                              '976',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.normal,
                                color: ColorConstraint.white
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'A',
                        style: TextStyle(
                          fontSize: 52,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                          color: ColorConstraint.white
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(width: 8,),
                      Flexible(
                        child: Text(
                          'rsenal will have to grind it out against Aston Villa if they are to register',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.normal,
                            color: ColorConstraint.white
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          'League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Artet\'s side had already surrendered points to Liverpool and Manchester City',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.normal,
                            color: ColorConstraint.white
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 52,)

        ],
      ),
    );
  }
}
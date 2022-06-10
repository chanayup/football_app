import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class ExploreNewImages extends StatefulWidget {
  const ExploreNewImages({ Key? key }) : super(key: key);

  @override
  _ExploreNewImagesState createState() => _ExploreNewImagesState();
}

class _ExploreNewImagesState extends State<ExploreNewImages> {

  final List<String> imagesNews = [
    'assets/images/articleImage1.jpg',
    'assets/images/articleImage2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Trending News',
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
          SizedBox(height: 8,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ImageNewWidget(0, imagesNews[0]),
                ImageNewWidget(1, imagesNews[1]),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget ImageNewWidget(int index, String image) {
    double leftSpacing = 0, rightSpacing = 0;
    if (index == 0) {
      leftSpacing = 24;
      rightSpacing = 10;
    } else if (index == imagesNews.indexOf(imagesNews.last)) {
      leftSpacing = 10;
      rightSpacing = 24;
    } else {
      leftSpacing = 10;
      rightSpacing = 10;
    }
    return Padding(
      padding: EdgeInsets.only(left: leftSpacing, right: rightSpacing),
      child: InkWell(
        borderRadius: BorderRadius.circular(9),
        onTap: () => Get.toNamed('/article', arguments: image),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Image.asset(
            image,
            width: 241,
            height: 169,
            fit: BoxFit.cover,
          ),
        )  
      ),
    );
  }

}
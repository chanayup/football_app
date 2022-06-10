import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ExploreNewsList extends StatefulWidget {
  const ExploreNewsList({ Key? key }) : super(key: key);

  @override
  _ExploreNewsListState createState() => _ExploreNewsListState();
}

class NewsHeader {
  final String image;
  final String title;
  final String date;
  bool isSave;

  NewsHeader({required this.image, required this.title, required this.date, required this.isSave});
}

class _ExploreNewsListState extends State<ExploreNewsList> {

  List<NewsHeader> headers = [
    NewsHeader(
      image: 'assets/images/articel1.png',
      title: 'Roumor Has It: Lampard\'s position under threat, ...',
      date: '04 JAN 2021, 14:16',
      isSave: false
    ),
    NewsHeader(
      image: 'assets/images/articel5.png',
      title: 'Artrta sees ‘natural leader’ Tierney as a future, ...',
      date: '04 JAN 2021, 05:30',
      isSave: false
    ),
    NewsHeader(
      image: 'assets/images/articel2.png',
      title: 'Athletic Bilbao to appoint Marcelino as coach until, ...',
      date: '04 JAN 2021, 09:23',
      isSave: false
    ),
    NewsHeader(
      image: 'assets/images/articel3.png',
      title: 'Barcelona suffer too much late in games, says Ter Stegen',
      date: '04 JAN 2021, 06:06',
      isSave: false
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 8, bottom: 16,left: 24,right: 24),
      child: Container(
        child: Column(
          children: [
            NewsItem(0, headers[0]),
            NewsItem(1, headers[1]),
            NewsItem(2, headers[2]),
            NewsItem(3, headers[3]),
          ],
        ),
      )
    );
  }

  Widget NewsItem(int index, NewsHeader newsHeader) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(newsHeader.image),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsHeader.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.white
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Text(
                    newsHeader.date,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                      color: ColorConstraint.grey1
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: (){
                setState(() {
                  newsHeader.isSave = !newsHeader.isSave;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: (newsHeader.isSave) ? [ColorConstraint.gradient1, ColorConstraint.gradient2] : [ColorConstraint.black2, ColorConstraint.black2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  )
                ),
                child: Image.asset(
                  'assets/icons/bookmark.png',
                  width: 24,
                  height: 24,
                  color: (newsHeader.isSave) ? ColorConstraint.white : ColorConstraint.grey1
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
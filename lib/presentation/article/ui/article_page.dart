import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/article/ui/component/article_body.dart';
import 'package:football_app_test/presentation/style/color.dart';

import 'component/article_appbar.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({ Key? key }) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: articleAppBar,
      extendBodyBehindAppBar: true,
      backgroundColor: ColorConstraint.black2,
      body: SingleChildScrollView(
        child: ArticleBodyWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'this article add bookmark',
        onPressed: () {},
        elevation: 8,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [ColorConstraint.gradient1, ColorConstraint.gradient2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            )
          ),
          child: Image.asset(
            'assets/icons/bookmark.png',
            width: 60,
            height: 60,
            color: ColorConstraint.white,
          ),
        ),
      ),
    );
  }
}
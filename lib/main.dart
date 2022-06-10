import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:football_app_test/presentation/article/ui/article_page.dart';
import 'package:football_app_test/presentation/dashboard/binding/dashboard_binding.dart';
import 'package:football_app_test/presentation/dashboard/ui/dashboard_page.dart';
import 'package:football_app_test/presentation/login/ui/login_page.dart';
import 'package:football_app_test/presentation/splash/ui/splash_page.dart';
import 'package:football_app_test/presentation/standingsDetail/ui/standings_detail_page.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:football_app_test/presentation/teamDetail/ui/team_detail_page.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child!,
        );
      },
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=> LoginPage()),
        GetPage(name: '/splash', page:()=> SplashPage(), transition: Transition.leftToRight, transitionDuration: Duration(milliseconds: 500)),
        GetPage(name: '/dashboard', page:()=> DashBoardPage(), transition: Transition.rightToLeft, binding: DashBoardBinding()),
        GetPage(name: '/article', page:()=> ArticlePage(), transitionDuration: Duration(milliseconds: 300)),
        GetPage(name: '/standings-detail', page: ()=> StandingsDetailPage()),
        GetPage(name: '/team-detail', page: ()=> TeamDetailPage())
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        highlightColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        unselectedWidgetColor: ColorConstraint.grey2
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}


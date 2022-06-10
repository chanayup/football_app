import 'package:flutter/material.dart';
import 'package:football_app_test/domain/entities/dashboard.dart';
import 'package:football_app_test/presentation/dashboard/controller/dashboard_controller.dart';
import 'package:football_app_test/presentation/explore/ui/explore_page.dart';
import 'package:football_app_test/presentation/home/ui/home_page.dart';
import 'package:football_app_test/presentation/profile/ui/profile_page.dart';
import 'package:football_app_test/presentation/standings/ui/standings_page.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:get/get.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({ Key? key }) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  PageController pageController = PageController(initialPage: 0);

  final dashboardController = Get.find<DashBoardController>();

   final dashboardBottomBar = [
    DashBoardBottomBar(icon: 'assets/icons/home.png', title: 'Home'),
    DashBoardBottomBar(icon: 'assets/icons/discovery.png', title: 'Explore'),
    DashBoardBottomBar(icon: 'assets/icons/chart.png', title: 'Standings'),
    DashBoardBottomBar(icon: 'assets/icons/profile.png', title: 'My Profile'),
  ]; 

  int currentPageIndex = 0;

  final screen = [
    HomePage(),
    ExplorePage(),
    StandingsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraint.black2,
      body: Obx(()=>
        IndexedStack(
          index: dashboardController.currentPageIndex.value,
          children: screen,
        )
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.1,
        color: ColorConstraint.black1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i=0; i < dashboardBottomBar.length; i++)
              buttonBottomBarWidget(i, dashboardBottomBar[i])
          ],
        ),
      ),
    );
  }

  Widget buttonBottomBarWidget(int index, DashBoardBottomBar dashboardBottomBar) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: ()=> dashboardController.changePageIndex(index),
        child: Obx(()=>(dashboardController.currentPageIndex.value != index)
        ? AnimatedContainer(
          duration: Duration(milliseconds: 500),
          child: Image.asset(
            dashboardBottomBar.icon,
            width: 24,
            height: 24,
            color: ColorConstraint.grey2,
          ),
        )
        : AnimatedContainer(
          duration: Duration(milliseconds: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                  dashboardBottomBar.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                    color: ColorConstraint.blue,
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorConstraint.blue
                  ),
                ) 
            ],
          ),
        ))
      ),
    );
  }
  
}
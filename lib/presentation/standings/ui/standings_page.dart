import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/standings/ui/component/standings_body.dart';
import 'package:football_app_test/presentation/style/color.dart';

class StandingsPage extends StatefulWidget {
  const StandingsPage({ Key? key }) : super(key: key);

  @override
  _StandingsPageState createState() => _StandingsPageState();
}

class _StandingsPageState extends State<StandingsPage> {

  FocusNode focusNodeStanding = FocusNode();
  TextEditingController searchStandingController = TextEditingController();

  @override
  void dispose() {
    searchStandingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: ColorConstraint.black2,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              focusNode: focusNodeStanding,
              controller: searchStandingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: ColorConstraint.white, width: 2),
                ),
                prefixIcon: ImageIcon(
                  AssetImage('assets/icons/search.png'),
                  size: 16,
                  color: (focusNodeStanding.hasFocus || searchStandingController.text.isNotEmpty) ? ColorConstraint.white : ColorConstraint.grey2,
                ),
                hintText: 'Search your competition ...',
                hintStyle: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ColorConstraint.grey2
                ),
                fillColor: ColorConstraint.black1,
                filled: true
              ),
              cursorColor: ColorConstraint.white,
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorConstraint.white
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.search,
            ),
          ),
        ),
        body: StandingsBodyWidget()
      ),
    );
  }
}
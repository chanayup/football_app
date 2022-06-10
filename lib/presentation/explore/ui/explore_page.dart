import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/explore/ui/component/explore_body.dart';
import 'package:football_app_test/presentation/style/color.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  FocusNode focusNode = FocusNode();
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var currentFocus = FocusScope.of(context);
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
              focusNode: focusNode,
              controller: searchController,
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
                  color: (focusNode.hasFocus || searchController.text.isNotEmpty) ? ColorConstraint.white : ColorConstraint.grey2,
                ),
                hintText: 'Search for news, team, match, etc...',
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
        body: ExploreBodyWidget()
      ),
    );
  }
}
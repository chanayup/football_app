
import 'package:get/get.dart';

class DashBoardController extends GetxController {

  var currentPageIndex = 0.obs;

  changePageIndex(int index) {
    currentPageIndex.value = index;
    print(index);
  }

}
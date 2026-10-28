import 'package:flutter/widgets.dart';
import 'package:fluttertest/menu/history_page.dart';
import 'package:fluttertest/menu/home_page.dart';
import 'package:fluttertest/menu/profile_page.dart';
import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];

  final List<String> pageTitles = ['Home', 'History', 'Profile'];

  String get currentTitle => pageTitles[selectedIndex.value];

  void changePage(int index) {
    selectedIndex.value = index;
    Get.back();
  }
}

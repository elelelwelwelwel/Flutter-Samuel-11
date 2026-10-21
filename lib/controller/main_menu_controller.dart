import 'package:flutter/widgets.dart';
import 'package:fluttertest/menu/history_page.dart';
import 'package:fluttertest/menu/home_page.dart';
import 'package:fluttertest/menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}

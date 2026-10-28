import 'package:flutter/material.dart';
import 'package:fluttertest/controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final MenuDrawerController controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(controller.currentTitle),
          backgroundColor: Color.fromARGB(255, 195, 255, 241),
        ),
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 195, 255, 241),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 170, 240, 225),
                  ),
                  child: Center(
                    child: Text("DRAWER", style: TextStyle(fontSize: 35)),
                  ),
                ),
                ListTile(
                  leading:  Icon(Icons.home),
                  title:  Text('Home', style: TextStyle(fontSize: 20)),
                  selected: controller.selectedIndex.value == 0,
                  onTap: () => controller.changePage(0),
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('History', style: TextStyle(fontSize: 20)),
                  selected: controller.selectedIndex.value == 1,
                  onTap: () => controller.changePage(1),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile', style: TextStyle(fontSize: 20)),
                  selected: controller.selectedIndex.value == 2,
                  onTap: () => controller.changePage(2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
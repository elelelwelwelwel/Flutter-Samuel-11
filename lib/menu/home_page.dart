import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertest/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() {
          final teamsList = controller.listModel.value?.teams;

          if (teamsList == null || teamsList.isEmpty) {
            return Center(child: Text(" "));
          }

          return SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: teamsList.length,
              itemBuilder: (context, index) {
                final team = teamsList[index];

                final teamName = team['strTeam'];
                final stadiumName = team['strStadium'];

                return InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 5,
                    child: SizedBox(
                      width: 200,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              teamName!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Stadion: $stadiumName",
                              style: TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}

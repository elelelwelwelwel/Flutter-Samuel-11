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
        margin: EdgeInsets.all(10),
        child: SizedBox(
          height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
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
                        children: [
                          Text(
                            makanan.namaMakanan,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Rp." + makanan.hargaMakanan,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
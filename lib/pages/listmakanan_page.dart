import 'package:flutter/material.dart';
import 'package:fluttertest/controller/listmakanan_controller.dart';
import 'package:fluttertest/pages/detailmakanan_page.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Makanan')),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                Get.to(
                  () => const DetailMakananPage(),
                  arguments: makanan,
                );
              },
              child: Card(
                elevation: 5,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(makanan.namaMakanan, style: TextStyle(fontSize: 20)),
                      Text(
                        "Rp." + makanan.hargaMakanan,
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertest/controller/detailmakanan_controller.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailMakananController());

    return Scaffold(
      appBar: AppBar(title: Text(controller.makanan.namaMakanan)),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                controller.makanan.gambarMakanan,
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              controller.makanan.namaMakanan,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              "Rp ${controller.makanan.hargaMakanan}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text("Deskripsi:", style: TextStyle(fontSize: 16)),
            Text(
              controller.makanan.deskripsiMakanan,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "Rating: ${controller.makanan.rating}",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text("Review:", style: TextStyle(fontSize: 16)),
            Text(
              controller.makanan.reviewMakanan,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

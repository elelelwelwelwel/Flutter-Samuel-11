import 'package:flutter/material.dart';
import 'package:fluttertest/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil data MakananModel yang dikirim dari ListMakananPage
    final MakananModel makanan = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(makanan.namaMakanan)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                makanan.gambarMakanan,
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            Text(makanan.namaMakanan, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 8),
            Text(
              "Rp ${makanan.hargaMakanan}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            const Text("Deskripsi:", style: TextStyle(fontSize: 16)),
            Text(
              makanan.deskripsiMakanan,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "Rating: ${makanan.rating}",
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text("Review:", style: TextStyle(fontSize: 16)),
            Text(makanan.reviewMakanan, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

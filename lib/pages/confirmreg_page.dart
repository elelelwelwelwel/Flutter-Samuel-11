import 'package:flutter/material.dart';
import 'package:fluttertest/controller/confirmreg_controller.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Center(
        child: Column(
          children: [
            Text(
              "Nama ${controller.nama}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
            Text(
              "Jenis Kelamin ${controller.jenisKelamin}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text(
              "Alamat ${controller.alamat}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text(
              "Email ${controller.email}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text(
              "No WA ${controller.noWa}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Oke"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertest/component/custom_textfield.dart';
import 'package:fluttertest/component/custom_textfield_number.dart';
import 'package:get/get.dart';
import 'package:fluttertest/controller/kalkulator_controller.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 242, 255),

      appBar: AppBar(title: Text("kalkulator")),
      body: Column(
        children: [
          CustomTextFieldNumber(
            txtController: txtAngka1,
            myHint: "input angka 1",
          ),
          CustomTextFieldNumber(
            txtController: txtAngka2,
            myHint: "input angka 2",
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.tambah(angka1, angka2);
                },
                child: Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kurang(angka1, angka2);
                },
                child: Text("Kurang"),
              ),
              ElevatedButton(
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kali(angka1, angka2);
                },
                child: Text("Kali"),
              ),
              ElevatedButton(
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.bagi(angka1, angka2);
                },
                child: Text("bagi"),
              ),
            ],
          ),
      
          ElevatedButton(
            onPressed: () {
              txtAngka1.clear();
              txtAngka2.clear();

              controller.reset();
            },
            child: Text("Reset"),
          ),

          Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

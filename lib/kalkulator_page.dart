import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertest/controller/kalkulator_controller.dart';

class KalkulatorPage extends StatefulWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController txtAngka1 = TextEditingController();
    final TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("ini adalah kalkulator")),
      body: Column(
        children: [
          Text(
            "Kalkulator",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hint: Text(
                  "input angka 1",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hint: Text(
                  "input angka 2",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    widget.controller.tambah(angka1, angka2);
                  },
                  child: Text("+"),
                ),
                ElevatedButton(onPressed: () {}, child: Text("-")),
                ElevatedButton(onPressed: () {}, child: Text("x")),
                ElevatedButton(onPressed: () {}, child: Text("/")),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "hasil = ",
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 25),
            child: ElevatedButton(onPressed: () {}, child: Text("Reset")),
          ),
        ],
      ),
    );
  }
}

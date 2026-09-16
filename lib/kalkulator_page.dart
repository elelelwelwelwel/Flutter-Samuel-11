import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
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
                ElevatedButton(onPressed: () {}, child: Text("+")),
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

import 'package:flutter/material.dart';
import 'package:fluttertest/login_page.dart';
import 'package:fluttertest/kalkulator_page.dart';
import 'package:fluttertest/login_clone.dart';
import 'package:fluttertest/pages/login_clone_page.dart';
import 'package:fluttertest/pages/calculator_page.dart';
import 'package:fluttertest/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Learning App',
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
      

      // home: LoginPage(),
      // home: CalculatorPage(),

    );
  }
}

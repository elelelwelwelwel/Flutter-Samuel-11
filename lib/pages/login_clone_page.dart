import 'package:flutter/material.dart';
import 'package:fluttertest/controller/login_clone_controller.dart';
import 'package:get/get.dart';
import 'package:fluttertest/component/custom_textfield.dart';
import 'package:fluttertest/component/custom_button.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final controller = Get.put(LoginCloneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/instalogo.webp', height: 80),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                txtController: controller.txtUsername,
                myHint: "input username",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                txtController: controller.txtPassword,
                myHint: "input password",
              ),
            ),

            Obx(
              () => controller.isLoading.value ? Center(child: CircularProgressIndicator(),) : OutlinedButton(
                onPressed: () {
                  controller.login();
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

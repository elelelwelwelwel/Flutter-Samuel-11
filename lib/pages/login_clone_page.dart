import 'package:flutter/material.dart';
import 'package:fluttertest/component/custom_textfield.dart';
import 'package:fluttertest/component/custom_button.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

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
                txtController: TextEditingController(),
                hint: "input username",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                txtController: TextEditingController(),
                hint: "input password",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: CustomButton(text: 'Login', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

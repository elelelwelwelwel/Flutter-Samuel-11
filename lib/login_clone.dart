import 'package:flutter/material.dart';
import 'package:fluttertest/component/custom_textfield.dart';
import 'package:fluttertest/component/custom_button.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // isinya textfield username pw sm button
            Text(
              "Instagram",
              style: TextStyle(
                fontSize: 45,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: CustomTextField(
                txtController: txtusername,
                hint: "input username",
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: CustomTextField(
                txtController: txtpassword,
                hint: "input password",
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: CustomButton(
                text: 'Login',
                onPressed: () {
                  String username = txtusername.text.toString();
                  String password = txtpassword.text.toString();
                  if (username == "admin" && password == "admin") {
                    print("Login Success");
                  } else {
                    print("Login Failed");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

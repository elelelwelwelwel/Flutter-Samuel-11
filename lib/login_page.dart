import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  String statusLogin = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")), // ini atribute dari scaffold
      body: Column(
        children: [
          // isinya texxtfield username pw and button
          Text(
            "welcome to Application",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: txtusername,
              decoration: InputDecoration(
                hint: Text(
                  "input username",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: txtpassword,
              decoration: InputDecoration(
                hint: Text(
                  "input password",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              obscureText: true,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String username = txtusername.text.toString();
                  String password = txtpassword.text.toString();
                  if (username == "admin" && password == "admin") {
                    print("Login Success");
                  } else {
                    print("Login Failed");
                  }
                },
                child: Text('Login'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Register')),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertest/component/custom_textfield.dart';
import 'package:fluttertest/component/custom_textfield_number.dart';
import 'package:fluttertest/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          CustomTextField(txtController: txtNama, myHint: "input nama"),
          CustomTextField(
            txtController: txtJenisKelamin,
            myHint: "input jenis kelamin",
          ),
          CustomTextField(txtController: txtAlamat, myHint: "input alamat"),
          CustomTextField(txtController: txtEmail, myHint: "input email"),
          CustomTextFieldNumber(txtController: txtNoWa, myHint: "input no wa"),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(
                Routes.confirm_registration,
                arguments: {
                  'name': txtNama.text.toString(),
                  'jenisKelamin': txtJenisKelamin.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                  'email': txtEmail.text.toString(),
                  'noWa': txtNoWa.text.toString(),
                },
              );
            },
            child: Text("Send"),
          ),
        ],
      ),
    );
  }
}

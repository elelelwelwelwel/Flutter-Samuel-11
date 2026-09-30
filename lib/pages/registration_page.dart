import 'package:flutter/material.dart';
import 'package:fluttertest/component/custom_dropdownlist.dart';
import 'package:fluttertest/component/custom_textfield.dart';
import 'package:fluttertest/component/custom_textfield_number.dart';
import 'package:fluttertest/controller/registration_controller.dart';
import 'package:fluttertest/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    final controller = Get.put(RegistrationController());
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          CustomTextField(txtController: txtNama, myHint: "input nama"),
          Obx(
            () => CustomDropdown(
              value: controller.selectedJenisKelamin.value,
              hint: "input jenis kelamin",
              items: controller.genderOptions,
              onChanged: (newValue) {
                controller.setJenisKelamin(newValue);
              },
            ),
          ),
          CustomTextField(txtController: txtAlamat, myHint: "input alamat"),
          CustomTextField(txtController: txtEmail, myHint: "input email"),
          CustomTextFieldNumber(txtController: txtNoWa, myHint: "input no wa"),

          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.confirm_registration,
                  arguments: {
                    'name': txtNama.text.toString(),
                    'jenisKelamin': controller.selectedJenisKelamin.value ?? '',
                    'alamat': txtAlamat.text.toString(),
                    'email': txtEmail.text.toString(),
                    'noWa': txtNoWa.text.toString(),
                  },
                );
              },
              child: Text("Send"),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:fluttertest/models/login_model.dart';
import 'package:fluttertest/pages/menu_drawer_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginCloneController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  // method hit api
  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "username dan password sudah harus terisi");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          loginModel.value = loginModelFromJson(response.body);
          if (loginModel.value?.status == true) {
            Get.snackbar("berhasil", loginModel.value!.message.toString());
            Get.to(() => MenuDrawerPage());
          } else {
            Get.snackbar("gagal", loginModel.value!.message.toString());
          }
        } else {
          Get.snackbar("Error", "Terjadi kesalahan saat login");
        }
      } catch (e) {
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}

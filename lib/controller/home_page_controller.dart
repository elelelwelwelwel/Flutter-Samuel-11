import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertest/models/list_model.dart';

class HomePageController extends GetxController {
  var isLoading = false.obs;
  var listModel = Rxn<ListModel>();

  @override
  void onInit() {
    super.onInit();
    load();
  }

  void load() async {
    try {
      isLoading.value = true;
      final url = Uri.parse("https://www.thesportsdb.com/api/v1/json/123/searchteams.php?t=Barcelona");
      
      final response = await http.get(url);

      if (response.statusCode == 200) {
        listModel.value = listModelFromJson(response.body);
      } else {
        Get.snackbar("Error", "Gagal mengambil data dari server");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
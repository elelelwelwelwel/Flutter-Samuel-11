// controller/registration_controller.dart
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  var selectedJenisKelamin = RxnString();
  final List<String> genderOptions = ['Male', 'Female', 'Other'];

  void setJenisKelamin(String? value) {
    selectedJenisKelamin.value = value;
  }
}
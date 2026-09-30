import 'package:fluttertest/pages/confirmreg_page.dart';
import 'package:fluttertest/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";

  static final myPages = [
    GetPage(name: registration, page : ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page : ()=> ConfirmRegPage()),
  ];
}

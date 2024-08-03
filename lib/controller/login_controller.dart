import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var showPassword = false.obs;
  void toogleShowPassword() {
    showPassword.value = !showPassword.value;
  }

  @override
  void dispose() {
    email.dispose();

    password.dispose();
    super.dispose();
  }
}

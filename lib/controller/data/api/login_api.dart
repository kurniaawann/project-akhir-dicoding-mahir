import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginControllerApi extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var message = ''.obs;
  var userId = ''.obs;
  var name = ''.obs;
  var token = ''.obs;
  var isLoggingIn = false.obs;

  void login() async {
    isLoggingIn.value = true;
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar('Error', 'Email dan password harus diisi',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      isLoggingIn.value = false;
      return;
    }

    final response = await http.post(
      Uri.parse('https://story-api.dicoding.dev/v1/login'),
      body: {
        'email': email.value,
        'password': password.value,
      },
    );
    isLoggingIn.value = false;

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      message.value = jsonResponse['message'];
      userId.value = jsonResponse['loginResult']['userId'];
      name.value = jsonResponse['loginResult']['name'];
      token.value = jsonResponse['loginResult']['token'];

      await saveToken(token.value);

      Get.snackbar(
        'Berhasil',
        "Berhasil Login",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      GoRouter.of(Get.context!).goNamed('liststory');
    } else {
      Get.snackbar(
        'Terjadi Kesalahan',
        'Login Gagal, Silahkan Periksa Email Dan Password Anda',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user_token', token);
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user_token');

    token.value = '';
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_token');
  }
}

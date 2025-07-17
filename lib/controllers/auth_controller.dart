import 'package:flutter/material.dart';
import 'package:food_delivery/services/api_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var username = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  /// LOGIN
  Future<void> login() async {
    isLoading.value = true;
    final response = await ApiService.login(email.value, password.value);
    isLoading.value = false;

    if (response['success']) {
      Get.snackbar(
        'Inicio de sesión exitoso',
        'Has iniciado sesión correctamente.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Future.delayed(Duration(seconds: 3), () {
        Get.offAllNamed('/home');
      });
    } else {
      Get.snackbar(
        'Error en iniciar sesión',
        '',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  /// REGISTER
  Future<void> register() async {
    isLoading.value = true;
    final response = await ApiService.register(
      username.value,
      email.value,
      password.value,
    );
    isLoading.value = false;

    if (response['success']) {
      Get.snackbar(
        'Registro exitoso',
        'Tu cuenta ha sido creada.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      // Opcional: redirigir al login
      // Get.offNamed('/login');
    } else {
      Get.snackbar(
        'Error en registrarse',
        '',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/screens/login_screen.dart';
import 'package:food_delivery/services/api_service.dart';
import 'package:get/get.dart';

void main() async{
  Get.put(AuthController());
  await ApiService.init();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}

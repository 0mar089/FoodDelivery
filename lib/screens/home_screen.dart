import 'package:flutter/material.dart';
import 'package:food_delivery/components/appbar_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [AppbarHome()]));
  }
}

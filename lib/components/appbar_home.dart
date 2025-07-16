import 'package:flutter/material.dart';

class AppbarHome extends StatefulWidget {
  const AppbarHome({super.key});

  @override
  State<AppbarHome> createState() => _AppbarHomeState();
}

class _AppbarHomeState extends State<AppbarHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          // Item 1
          Column(
            children: [
              Row(children: [Text("Your location")]),
              Row(children: [Text("Barcelona, Spain")]),
            ],
          ),
          Spacer(),
          //Item 2
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 32,
          ),
        ],
      ),
    );
  }
}

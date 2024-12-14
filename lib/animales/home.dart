import 'package:flutter/material.dart';
import 'package:prueba_1/animales/body_page.dart';
import 'package:prueba_1/animales/header.dart';
import 'package:prueba_1/animales/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Stack(
          children: [
            Header(),
            BodyPage(),
            SideBar(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:prueba_1/animales/body_page.dart';
import 'package:prueba_1/animales/header.dart';
//import 'package:prueba_1/animales/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF2a4849),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * .1,
        ),
        child: const Stack(
          children: [
            Header(),
            BodyPage(),
            //SideBar(),
          ],
        ),
      ),
    );
  }
}

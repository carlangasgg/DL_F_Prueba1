import 'package:flutter/material.dart';
import 'package:prueba_1/animales/header.dart';
import 'package:prueba_1/descripciones/animal_buttons.dart';
import 'package:prueba_1/descripciones/animal_image.dart';
import 'package:prueba_1/descripciones/animal_info.dart';
import 'package:prueba_1/descripciones/animal_title.dart';

class Animal extends StatelessWidget {
  final String type;
  const Animal({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF2a4849),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Stack(
          children: [
            const Header(),
            AnimalTitle(type: type),
            AnimalImage(type: type),
            AnimalInfo(type: type),
            const AnimalButtons(),
          ],
        ),
      ),
    );
  }
}

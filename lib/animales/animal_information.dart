import 'package:flutter/material.dart';
import 'package:prueba_1/animales/animal_header.dart';

class AnimalInformation extends StatelessWidget {
  const AnimalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double animalWidth = size.width * .45;
    double bodyBottom = size.height * .05;

    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: animalWidth * .1,
              right: animalWidth * .1,
              bottom: 20,
            ),
            child: AnimalHeader(height: bodyBottom),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:prueba_1/animales/animal_body.dart';

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
            child: animalHeader(bodyBottom),
          ),
        ),
      ],
    );
  }
}

Widget animalHeader(double bodyBottom) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Discover",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      const Text(
        "Our Majestic world together",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
      const Expanded(
        child: AnimalBody(),
      ),
      SizedBox(
        height: bodyBottom,
      )
    ],
  );
}

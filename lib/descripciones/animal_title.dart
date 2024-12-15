import 'package:flutter/material.dart';

class AnimalTitle extends StatelessWidget {
  final String type;
  AnimalTitle({super.key, required this.type});

  final Map<String, String> animalNames = {
    'bird': 'Pájaro',
    'cat': 'Gato',
    'cow': 'Vaca',
    'dog': 'Perro',
    'horse': 'Caballo',
    'lion': 'León',
    'rooster': 'Gallo',
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double position = size.height * .15;
    double heigth = size.height * .10;

    return Positioned(
      top: position, // Positioned below the Navbar
      left: 0,
      right: 0,
      height: heigth,
      child: Text(
        animalNames[type]!,
        textAlign: TextAlign.start,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

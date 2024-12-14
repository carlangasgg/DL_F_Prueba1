import 'package:flutter/material.dart';
import 'package:prueba_1/animales/animal_information.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bodyHeight = size.height * .9;
    double generalInfoWidth = size.width * .65;

    return Positioned(
      top: size.height * .15,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          Container(
            height: bodyHeight,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  width: generalInfoWidth,
                  color: Colors.orange,
                  child: const AnimalInformation(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

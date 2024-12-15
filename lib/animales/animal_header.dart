import 'package:flutter/material.dart';
import 'package:prueba_1/animales/animal_body.dart';

class AnimalHeader extends StatelessWidget {
  final double height;
  const AnimalHeader({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
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
          height: height,
        )
      ],
    );
  }
}

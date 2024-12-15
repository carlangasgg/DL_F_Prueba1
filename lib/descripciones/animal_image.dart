import 'package:flutter/material.dart';

class AnimalImage extends StatelessWidget {
  final String type;
  const AnimalImage({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double position = size.height * .25;
    double height = size.height * .45;

    return Positioned(
      top: position,
      right: 0,
      height: height,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Image.asset(
              "assets/img/${type}_2.png",
              height: height,
              width: size.width * .8,
            ),
          ],
        ),
      ),
    );
  }
}

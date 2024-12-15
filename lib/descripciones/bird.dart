import 'package:flutter/material.dart';
import 'package:prueba_1/descripciones/navbar.dart';

class BirdPage extends StatelessWidget {
  const BirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double titlePosition = size.height * .15;
    double imagePosition = size.height * .30;
    double infoPosition = size.height * .60;
    double buttonsPosition = size.height * .80;

    double titleHeight = size.height * .15;
    double imageHeight = size.height * .30;
    double infoHeight = size.height * .20;
    double buttonsHeight = size.height * .20;

    return Scaffold(
      backgroundColor: const Color(0xFF2a4849),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            // Navbar is positioned at the top
            const Navbar(),

            // Title is positioned below Navbar
            animalTitle(titlePosition, titleHeight),

            // Image is positioned below title
            animalImage(imagePosition, imageHeight),

            // Info is positioned below image
            animalInfo(infoPosition, infoHeight),

            // Buttons are positioned below info
            animalButtons(buttonsPosition, buttonsHeight),
          ],
        ),
      ),
    );
  }

  Widget animalTitle(double position, double height) {
    return Positioned(
      top: position, // Positioned below the Navbar
      left: 0,
      right: 0,
      height: height,
      child: const Text(
        "Bird",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget animalImage(double position, double height) {
    return Positioned(
      top: position, // Positioned below title
      left: 0,
      right: 0,
      height: height,
      child: Row(
        children: [
          const Text(
            "Image",
            textAlign: TextAlignVertical(y: 0),
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.circular(15),
            child: Image.asset(
              "assets/img/bird_2.png",
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget animalInfo(double position, double height) {
    return Positioned(
      top: position, // Positioned below image
      left: 0,
      right: 0,
      height: height,
      child: const Text(
        "Info",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget animalButtons(double position, double height) {
    return Positioned(
      top: position, // Adjusted by adding a little padding
      left: 0,
      right: 0,
      height: height,
      child: const Center(
        child: Text(
          "Buttons",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

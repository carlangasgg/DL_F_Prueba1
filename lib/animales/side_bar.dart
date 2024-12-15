import 'dart:math';

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bodyHeight = size.height * .9;
    double sidebarWidth = size.width * .4;
    double startAt = size.width - sidebarWidth;

    return Positioned(
      top: size.height * .15,
      left: startAt,
      child: Transform.rotate(
        angle: 3 * pi / 2,
        child: SizedBox(
          height: bodyHeight,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Reptiles',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Birds',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Animals',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Fishes',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

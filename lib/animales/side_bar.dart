import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double bodyHeight = size.height * .9;
    double sidebarWidth = size.width * .35;
    double startAt = size.width - sidebarWidth;

    return Positioned(
      top: size.height * .15,
      left: startAt,
      child: SizedBox(
        height: bodyHeight,
        width: sidebarWidth,
      ),
    );
  }
}

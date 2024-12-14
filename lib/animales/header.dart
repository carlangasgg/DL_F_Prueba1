import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double headerHeight = size.height * .15;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: headerHeight,
        color: Colors.red,
      ),
    );
  }
}

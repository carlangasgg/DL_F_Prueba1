import 'package:flutter/material.dart';

class AnimalInformation extends StatelessWidget {
  const AnimalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: animalHeader(),
        ),
      ],
    );
  }
}

Widget animalHeader() {
  return Column(
    children: [
      const Text("Discover"),
      const Text("Our Majestic world together"),
      Expanded(
        child: animalBody(),
      ),
    ],
  );
}

Widget animalBody() {
  List<String> imgAnimals = [
    "assets/img/bird.jpg",
    "assets/img/cat.jpg",
    "assets/img/cow.jpg",
    "assets/img/dog.jpg",
    "assets/img/horse.jpg",
    "assets/img/lion.jpg",
    "assets/img/rooster.jpg",
  ];
  return ListView.builder(
    padding: const EdgeInsets.only(top: 8.0), // padding around the grid
    itemCount: imgAnimals.length, // total number of items
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imgAnimals[index],
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
          ],
        ),
      );
    },
  );
}

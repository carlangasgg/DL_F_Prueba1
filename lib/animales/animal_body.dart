import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';
import 'package:prueba_1/descripciones/animal.dart';

class AnimalBody extends StatefulWidget {
  const AnimalBody({super.key});

  @override
  State<AnimalBody> createState() => _AnimalBodyState();
}

class _AnimalBodyState extends State<AnimalBody> {
  late AudioPlayer player;

  String nowPlaying = "";

  List<String> imgAnimals = [
    "assets/img/bird.jpg",
    "assets/img/cat.jpg",
    "assets/img/cow.jpg",
    "assets/img/dog.jpg",
    "assets/img/horse.jpg",
    "assets/img/lion.jpg",
    "assets/img/rooster.jpg",
  ];

  List<String> mp3Animals = [
    "assets/mp3/bird.mp3",
    "assets/mp3/cat.mp3",
    "assets/mp3/cow.mp3",
    "assets/mp3/dog.mp3",
    "assets/mp3/horse.mp3",
    "assets/mp3/lion.mp3",
    "assets/mp3/rooster.mp3",
  ];

  List<String> animals = [
    'bird',
    'cat',
    'cow',
    'dog',
    'horse',
    'lion',
    'rooster',
  ];

  final Map<String, WidgetBuilder> animalRoutes = {
    'bird': (context) => const Animal(type: 'bird'),
    'cat': (context) => const Animal(type: 'cat'),
    'cow': (context) => const Animal(type: 'cow'),
    'dog': (context) => const Animal(type: 'dog'),
    'horse': (context) => const Animal(type: 'horse'),
    'lion': (context) => const Animal(type: 'lion'),
    'rooster': (context) => const Animal(type: 'rooster'),
  };
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double animalWidth = size.width * .45;
    return ListView.separated(
      padding: const EdgeInsets.only(top: 25.0),
      itemCount: imgAnimals.length,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                imageRender(index, animalWidth),
                playAnimal(index),
              ],
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(color: Color(0xFF2a4849)),
    );
  }

  Widget imageRender(int index, double size) {
    return GestureDetector(
      onTap: () {
        final routeBuilder = animalRoutes[animals[index]];
        if (routeBuilder != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: routeBuilder),
          );
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imgAnimals[index],
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget playAnimal(int index) {
    return Positioned(
      bottom: 5,
      right: 5,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFE53A34),
        ),
        child: IconButton(
          onPressed: () async {
            await player.stop();

            await player.setAsset(mp3Animals[index]);
            await player.play();
          },
          icon: const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

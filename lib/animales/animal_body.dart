import 'dart:developer';

import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';

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
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose(); // Clean up the player when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double animalWidth = size.width * .45;
    return ListView.separated(
      padding: const EdgeInsets.only(top: 25.0), // padding around the grid
      itemCount: imgAnimals.length, // total number of items
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imgAnimals[index],
                    width: animalWidth,
                    height: animalWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: IconButton(
                    onPressed: () async {
                      try {
                        // Stop any currently playing audio
                        await player.stop();

                        // Set the new audio and play it
                        //await player.setAsset(mp3Animals[index]);
                        await player.setAsset(mp3Animals[index]);
                        await player.play();
                      } catch (e) {
                        // Handle errors gracefully
                        log("Error playing audio: $e");
                      }
                    },
                    icon: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(color: Color(0xFF2a4849)),
    );
  }
}
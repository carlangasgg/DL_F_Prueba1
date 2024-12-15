import 'package:flutter/material.dart';

class AnimalInfo extends StatelessWidget {
  final String type;

  const AnimalInfo({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double position = size.height * .70;
    double height = size.height * .20;
    return Positioned(
      top: position, // Positioned below image
      left: 0,
      right: 0,
      height: height,
      child: information(type),
    );
  }
}

Widget information(String type) {
  final Map<String, String> info = {
    'bird':
        'Los pájaros son los únicos animales con plumas, ¡y algunas especies pueden volar a más de 100 km/h! Además, usan sus cantos para hablar entre ellos o para llamar la atención de otros pájaros.',
    'dog':
        'Los perros tienen un súper olfato, ¡pueden oler hasta 100.000 veces mejor que los humanos! Por eso, muchas veces ayudan a encontrar cosas o personas.',
    'cat':
        'Los gatos pasan la mitad de su día durmiendo y son muy ágiles porque tienen un esqueleto flexible. Pueden saltar hasta seis veces su altura.',
    'rooster':
        'Los gallos cantan para marcar su territorio y avisar a otros que están ahí. Su canto puede escucharse desde muy lejos, ¡incluso a 1 km de distancia!',
    'cow':
        'Las vacas tienen cuatro estómagos que les ayudan a digerir el pasto. También tienen muy buena memoria, recuerdan caras y lugares por mucho tiempo.',
    'horse':
        'Los caballos pueden dormir de pie gracias a sus patas fuertes, y tienen una excelente memoria. Pueden reconocer amigos humanos después de muchos años.',
    'lion':
        'Los leones son conocidos como los "reyes de la selva" y su rugido puede escucharse hasta a 8 kilómetros. Las hembras son las que cazan para alimentar a toda la familia.',
  };
  return Text(
    info[type]!,
    textAlign: TextAlign.start,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      //fontWeight: FontWeight.w300,
    ),
  );
}

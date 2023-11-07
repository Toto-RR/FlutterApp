import 'package:app_romanos_toni/widgets/DescriptionWidget.dart';
import 'package:app_romanos_toni/widgets/FotoWidget.dart';
import 'package:app_romanos_toni/widgets/HeaderWidget.dart';
import 'package:app_romanos_toni/widgets/SquareWidget.dart';
import 'package:flutter/material.dart';
import 'Planets/Destination.dart';

void main() {
  runApp(MyApp());
}

const mars = Destination(
    planet: "Mars",
    moons: 2,
    lengthOfYear: 667,
    distanceToSun: 228,
    imageUrl: "imageUrl",
    description: "Mars is the fourth planet from the Sun - a dusty, cold,"
        "desert world with a very thin atmosphere.\n"
        "Mars is also a dynamic planet with seasons, polar ice caps, canyons,"
        "extinct volcanoes, and evidence that it was even more active in the past");

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final Color orange = const Color.fromARGB(255, 248, 150, 97);
  final Color black = const Color.fromARGB(255, 18, 18, 18);
  final Color backgroundGrey = const Color.fromARGB(255, 46, 46, 46);
  final TextStyle normalText = const TextStyle(color: Colors.white70);
  final TextStyle orangeText =
      const TextStyle(color: Color.fromARGB(255, 248, 150, 97));
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70.0,
          backgroundColor: black,
          leading: BackButton(
            color: orange,
          ),
          title: const Text(
            "Tours",
            style: TextStyle(
              color: Color.fromARGB(255, 248, 150, 97),
              fontStyle: FontStyle.normal,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.topLeft,
          height: double.infinity,
          width: double.infinity,
          color: backgroundGrey,
          child: Column(
            children: [
              HeaderWidget(orange: orange, normalText: normalText),
              SquareWidget(
                orange: orange,
                normalText: normalText,
                orangeText: orangeText,
              ),
              FotoWidget(),
              DescriptionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


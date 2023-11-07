import 'package:app_romanos_toni/widgets/booktravel_widget.dart';
import 'package:app_romanos_toni/widgets/description_widget.dart';
import 'package:app_romanos_toni/widgets/foto_widget.dart';
import 'package:app_romanos_toni/widgets/header_widget.dart';
import 'package:app_romanos_toni/widgets/square_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_romanos_toni/planets/destination_information.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({super.key, required this.planet});

  final DestinationInformation planet;

  final Color orange = const Color.fromARGB(255, 248, 150, 97);
  final Color black = const Color.fromARGB(255, 27, 27, 27);
  final Color backgroundGrey = const Color.fromARGB(255, 46, 46, 46);
  final TextStyle normalText = const TextStyle(color: Colors.white70);
  final TextStyle orangeText =
      const TextStyle(color: Color.fromARGB(255, 248, 150, 97));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: backgroundGrey,
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
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        alignment: Alignment.topLeft,
        height: double.infinity,
        width: double.infinity,
        color: black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderWidget(
              orange: orange,
              normalText: normalText,
              planet: planet,
            ),
            SquareWidget(
              orange: orange,
              normalText: normalText,
              orangeText: orangeText,
              planet: planet,
            ),
            FotoWidget(
              planet: planet,
            ),
            DescriptionWidget(
              planet: planet,
              normalText: normalText,
              orange: orange,
            ),
            BookTravelWidget(orange: orange),
          ],
        ),
      ),
    );
  }
}


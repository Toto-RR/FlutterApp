import 'package:app_romanos_toni/screen/trip_screen.dart';
import 'package:flutter/material.dart';
import 'planets/destination_information.dart';

void main() {
  runApp(const MyApp());
}

const DestinationInformation marte = DestinationInformation(
    travelerName: "Pau",
    planetName: "Mars",
    moons: 2,
    typePlanet: "Terrestrial",
    lengthOfYear: 667,
    distanceToSun: 228,
    imageUrl: "assets/mars_photo.jpg",
    description: "Mars is the fourth planet from the Sun - a dusty, cold,"
        "desert world with a very thin atmosphere.\n"
        "Mars is also a dynamic planet with seasons, polar ice caps, canyons,"
        "extinct volcanoes, and evidence that it was even more active in the past");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TripScreen(
        planet: marte,
      ),
    );
  }
}



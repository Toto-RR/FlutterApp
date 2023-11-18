import 'package:app_romanos_toni/satelite/satelite.dart';
import 'package:app_romanos_toni/screens/satelite_screen.dart';
import 'package:flutter/material.dart';

/* 
Link to reference: 
https://www.behance.net/gallery/135669749/Beyond-Space-Travel-Blockchain-Web-3-App-Case-Study/modules/767616125
*/ 

void main() {
  runApp(const MyApp());
}

const sateliteISS = Satelite(
  name: "International Space Station Journey", 
  photo: "assets/ISS2.jpg",
  about: "ISS is the home station of the planet earth. You will get to explore "
  "& discover space travel and its gobsmacking experiences. Gravity is...", 
  earthLocation: "Virginia", 
  spaceLocation: "ISS", 
  price: 1050,
  time: 24,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SateliteScreen(
        satelite: sateliteISS,
      ),
    );
  }
}


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
  MyApp({super.key});
  final Color orange = Color.fromARGB(255, 248, 150, 97);
  final Color black = Color.fromARGB(255, 18, 18, 18);
  final Color backgroundGrey = Color.fromARGB(255, 46, 46, 46);
  final TextStyle normalText = TextStyle(color: Colors.white70);
  final TextStyle orangeText =
      TextStyle(color: Color.fromARGB(255, 248, 150, 97));
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90.0,
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
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          alignment: Alignment.topLeft,
          height: double.infinity,
          width: double.infinity,
          color: backgroundGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "M  A  R  S",
                  style: TextStyle(
                    color: orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 10),
                child: const Text(
                  "Hey, Traveler!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Explore your next destination is: Mars",
                  style: normalText,
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: orange),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Moons: ",
                          style: normalText,
                        ),
                        Text(
                          "Planet Type: ",
                          style: normalText,
                        ),
                        Text(
                          "Lenght of year: ",
                          style: normalText,
                        ),
                        Text(
                          "Distance from the Sun: ",
                          style: normalText,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2", style: orangeText),
                        Text(
                          "Terrestrial",
                          style: orangeText,
                        ),
                        Text(
                          "687 Earth Days",
                          style: orangeText,
                        ),
                        Text(
                          "228 million km",
                          style: orangeText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                ),
                child: Text("Foto aqui"),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20),
                  color: Color.fromARGB(255, 88, 88, 88),
                  child: Text("Descripcion aqui"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

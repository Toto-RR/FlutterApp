import 'package:app_romanos_toni/planets/destination_information.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.orange,
    required this.normalText,
    required this.planet,
  });

  final DestinationInformation planet;
  final Color orange;
  final TextStyle normalText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            planet.planetName.toUpperCase(),
            style: TextStyle(
              color: orange,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              letterSpacing: 12,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Hey, ${planet.travelerName}!",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            "Explore your next destination: ${planet.planetName}.",
            style: normalText,
          ),
        ),
      ],
    );
  }
}

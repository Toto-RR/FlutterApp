import 'package:app_romanos_toni/planets/destination_information.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.planet,
    required this.normalText,
    required this.orange,
  });

  final DestinationInformation planet;
  final TextStyle normalText;
  final Color orange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: double.infinity,
      color: const Color.fromARGB(70, 88, 88, 88),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "The planet ${planet.planetName}".toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Text(
            planet.description,
            style: normalText,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Bring a spacesuit".toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Text(
            planet.description,
            style: normalText,
          ),
        ],
      ),
    );
  }
}

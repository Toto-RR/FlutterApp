import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.orange,
    required this.normalText,
  });

  final Color orange;
  final TextStyle normalText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            "M  A  R  S",
            style: TextStyle(
              color: orange,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: const Text(
            "Hey, Traveler!",
            style: TextStyle(
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
            "Explore your next destination: Mars",
            style: normalText,
          ),
        ),
      ],
    );
  }
}

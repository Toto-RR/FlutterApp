import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  const SquareWidget({
    super.key,
    required this.orange,
    required this.normalText,
    required this.orangeText,
  });

  final Color orange;
  final TextStyle normalText;
  final TextStyle orangeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: orange),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      padding: const EdgeInsets.all(20),
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
              Text(
                "2", 
                style: orangeText,
              ),
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
    );
  }
}

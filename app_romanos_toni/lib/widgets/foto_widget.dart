import 'package:app_romanos_toni/planets/destination_information.dart';
import 'package:flutter/material.dart';

class FotoWidget extends StatelessWidget {
  const FotoWidget({
    super.key,
    required this.planet,
  });

  final DestinationInformation planet;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Image.asset(
        planet.imageUrl,
      fit: BoxFit.fill,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  final Widget child;
  const InformationCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
        color: const Color.fromARGB(255, 81, 85, 112),
        boxShadow: const [
         BoxShadow(
            color: Color.fromARGB(90, 26, 0, 46),
            spreadRadius: 1,
            blurRadius: 15,
            offset: Offset(2, 2),
          )
        ]
      ),
      child: child,
    );
  }
}
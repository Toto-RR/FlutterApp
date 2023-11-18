import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 52, 54, 77),
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 141, 143, 166),
                  width: 2.0,
                ),
              ),
              child: IconButton(
                iconSize: 22,
                alignment: Alignment.center,
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                   //Back function
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

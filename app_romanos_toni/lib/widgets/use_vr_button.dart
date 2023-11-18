import 'package:flutter/material.dart';

class UseVRButton extends StatelessWidget {
  const UseVRButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            // Agrega el botón de "USE VR"
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 52, 54, 77),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color.fromARGB(255, 141, 143, 166),
                      width: 2.0,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.panorama_photosphere_rounded,
                          color: Color.fromARGB(255, 84, 28, 121),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'View in VR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

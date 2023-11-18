import 'package:flutter/material.dart';

class BookJourney extends StatelessWidget {
  const BookJourney({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookJourneyBackground(
      child: BookJourneyWidget(),
    );
  }
}

class BookJourneyBackground extends StatelessWidget {
  final Widget child;
  const BookJourneyBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    const colorBackground = Color.fromARGB(255, 45, 47, 68);
    return Container(
      decoration: const BoxDecoration(
        color: colorBackground,
      ),
      child: child,
    );
  }
}

class BookJourneyWidget extends StatefulWidget {
  const BookJourneyWidget({super.key});

  @override
  State<BookJourneyWidget> createState() => _BookJourneyWidgetState();
}

class _BookJourneyWidgetState extends State<BookJourneyWidget> {
  bool isHovered = false;
  double buttonScale = 1.0;
  Color customPurple = const Color.fromARGB(255, 118, 0, 203);
  Color buttonColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
          buttonColor = const Color.fromARGB(255, 53, 0, 90);
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
          buttonColor = customPurple;
        });
      },
      child: InkWell(
        onTap: () {
          //Function when click the button
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          decoration: BoxDecoration(
            border: Border.all(color:const Color.fromARGB(255, 53, 0, 90)),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: buttonColor,
          ),
          child: Container(
            alignment: Alignment.center,
            child: const Text(
              "Book Your Journey",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
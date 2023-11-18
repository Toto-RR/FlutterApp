import 'package:flutter/material.dart';

class BookTravelWidget extends StatefulWidget {
  const BookTravelWidget({
    super.key,
    required this.orange,
  });

  final Color orange;

  @override
  State<BookTravelWidget> createState() => _BookTravelWidgetState();
}

class _BookTravelWidgetState extends State<BookTravelWidget> {
  bool isHovered = false;
  double buttonScale = 1.0;
  Color buttonColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
          buttonColor = Colors.orange;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
          buttonColor = Colors.transparent;
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
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            border: Border.all(color: widget.orange),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: buttonColor,
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "BOOK   THE   VOYAGE".toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

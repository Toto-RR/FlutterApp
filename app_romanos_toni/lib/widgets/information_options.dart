import 'package:flutter/material.dart';

class ContainerOptions extends StatefulWidget {
  final String optionText;

  const ContainerOptions({
    Key? key, 
    required this.optionText,
  }) : super(key: key);

  @override
  State<ContainerOptions> createState() => _ContainerOptionsState();
}

class _ContainerOptionsState extends State<ContainerOptions> {
  bool isHovered = false;
  int selectedIndex = -1;
  Color customPurple = const Color.fromARGB(255, 118, 0, 203);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        if (!isSelected) {
          setState(() {
            isHovered = true;
          });
        }
      },
      onExit: (_) {
        if (!isSelected) {
          setState(() {
            isHovered = false;
          });
        }
      },
      child: InkWell(
        onTap: () {
          if (isSelected) {
            setState(() {
              selectedIndex = -1;
            });
          } else {
            setState(() {
              selectedIndex = widget.hashCode;
            });
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: containerColor,
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              widget.optionText,
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

  bool get isSelected => selectedIndex == widget.hashCode;

  Color get containerColor => isSelected
      ? customPurple
      : (isHovered ? customPurple.withOpacity(0.5) : Colors.transparent);
}

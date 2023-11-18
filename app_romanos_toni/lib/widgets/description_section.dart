import 'package:flutter/material.dart';
import 'package:app_romanos_toni/widgets/information_card.dart';
import 'package:app_romanos_toni/widgets/information_options.dart';
import 'package:app_romanos_toni/satelite/satelite.dart';
import 'package:app_romanos_toni/widgets/build_dot.dart';
import 'package:provider/provider.dart';

const double paddingSize = 40;
const double infoSectionRadius = 25;
const double spaceVertical = 30;

const titleStyle =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);
const title2Style =
    TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);
const title3Style =
    TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
const aboutInformationStyle =
    TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w600);
const customPurple = Color.fromARGB(255, 118, 0, 203);
const custom2Purple = Color.fromARGB(255, 148, 72, 255);
const custom3Purple = Color.fromARGB(90, 26, 0, 46);
const greyBackground = Color.fromARGB(255, 81, 85, 112);

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  Widget _generalpad(Widget child) => Padding(
        padding: const EdgeInsets.fromLTRB(paddingSize, 0, paddingSize, 0),
        child: child,
      );

  SizedBox _generalspace(double h) => SizedBox(height: h);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildDot(isActive: false),
            BuildDot(isActive: true),
            BuildDot(isActive: false)
          ],
        ),
        Information(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _generalspace(spaceVertical),
              _generalpad(const DestinationName()),
              _generalspace(15),
              _generalpad(const InfoOptions()),
              _generalspace(12),
              _generalpad(const AboutSection()),
              _generalspace(12),
              _generalpad(const LocationSection()),
              _generalspace(12),
              _generalpad(const DepartureSection()),
              _generalspace(12),
              _generalpad(const TimeDilationSection()),
              _generalspace(24),
              _generalpad(const Characteristics()),
              _generalspace(100),
            ],
          ),
        ),
      ],
    );
  }
}

class Information extends StatelessWidget {
  final Widget child;
  const Information({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    const colorBackground = Color.fromARGB(255, 45, 47, 68);
    return Container(
      decoration: const BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(infoSectionRadius),
          topRight: Radius.circular(infoSectionRadius),
        ),
      ),
      child: child,
    );
  }
}

class DestinationName extends StatelessWidget {
  const DestinationName({super.key});

  @override
  Widget build(BuildContext context) {
    final satelite = context.read<Satelite>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 220,
          child: Text(
            satelite.name,
            style: titleStyle,
          ),
        ),
        Column(
          children: [
            const Text(
              "Starting From",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.right,
            ),
            Row(
              children: [
                const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 7),
                Text(
                  satelite.price.toString(),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class InfoOptions extends StatelessWidget {
  const InfoOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      child: const Row(
        children: [
          Expanded(child: ContainerOptions(optionText: "Details")),
          Expanded(child: ContainerOptions(optionText: "Reviews")),
          Expanded(child: ContainerOptions(optionText: "FAQs")),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final satelite = context.read<Satelite>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            alignment: Alignment.topLeft,
            child: const Text("About", style: title2Style),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          satelite.about,
          style: aboutInformationStyle,
        ),
        const SizedBox(height: 5),
        Container(
          alignment: Alignment.bottomLeft,
          child: const Text(
            "Read More",
            style: TextStyle(
              color: custom2Purple,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final satelite = context.read<Satelite>();
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: const Text("Location", style: title2Style),
        ),
        const SizedBox(height: 5),
        InformationCard(
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(satelite.earthLocation, style: title3Style),
                      const Text("Earth", style: aboutInformationStyle),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..scale(3.5, 1.0),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          size: 20,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      Text("${satelite.time} Hours",
                          style: aboutInformationStyle),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(satelite.spaceLocation, style: title3Style),
                      const Text("Space", style: aboutInformationStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DepartureSection extends StatelessWidget {
  const DepartureSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final satelite = context.read<Satelite>();
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: const Text("Departure Time & Date", style: title2Style),
        ),
        const SizedBox(height: 5),
        InformationCard(
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("24 May '22", style: title3Style),
                      Text("10 AM", style: aboutInformationStyle),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Transform(
                          alignment: Alignment.centerLeft,
                          transform: Matrix4.identity()..scale(2.0, 1.0),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            size: 20,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Transform(
                          alignment: Alignment.centerRight,
                          transform: Matrix4.identity()..scale(2.0, 1.0),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: 20,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ]),
                      Text("${satelite.time} Hours",
                          style: aboutInformationStyle),
                    ],
                  ),
                ),
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("16 June '25", style: title3Style),
                      Text("11 AM", style: aboutInformationStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TimeDilationSection extends StatelessWidget {
  const TimeDilationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: const Text("Time Dilation", style: title2Style),
        ),
        const SizedBox(height: 5),
        InformationCard(
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3.5 Years", style: title3Style),
                      Text("Earth", style: aboutInformationStyle),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()..scale(3.5, 1.0),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          size: 20,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const Text("2022 - 2025", style: aboutInformationStyle),
                    ],
                  ),
                ),
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("2 Days", style: title3Style),
                      Text("Space", style: aboutInformationStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Characteristics extends StatelessWidget {
  const Characteristics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double spRadius = 5;
    const double blRadius = 10;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    color: greyBackground,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: custom3Purple.withOpacity(0.3),
                        spreadRadius: spRadius,
                        blurRadius: blRadius,
                        offset: const Offset(0, 0),
                      )
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Space Suit", style: title2Style),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.emoji_people_rounded, //Website icon not founded
                          color: Colors.white,
                          size: 105,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: customPurple,
                        border: Border.all(color: custom2Purple),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: greyBackground,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: custom3Purple.withOpacity(0.5),
                          spreadRadius: spRadius,
                          blurRadius: blRadius,
                          offset: const Offset(0, 0))
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Space Craft", style: title2Style),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.rocket_launch,
                          color: Colors.white,
                          size: 105,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: customPurple,
                        border: Border.all(color: custom2Purple),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                    color: greyBackground,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: custom3Purple.withOpacity(0.5),
                          spreadRadius: spRadius,
                          blurRadius: blRadius,
                          offset: const Offset(0, 0))
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Provided Food", style: title2Style),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.fastfood_rounded, //Web icon not founded
                          color: Colors.white,
                          size: 105,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: customPurple,
                        border: Border.all(color: custom2Purple),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: greyBackground,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: custom3Purple.withOpacity(0.5),
                        spreadRadius: spRadius,
                        blurRadius: blRadius,
                        offset: const Offset(0, 0),
                      ),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Events", style: title2Style),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.event_available_sharp,
                          color: Colors.white,
                          size: 105,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: customPurple,
                        border: Border.all(color: custom2Purple),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

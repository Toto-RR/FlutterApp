import 'package:app_romanos_toni/satelite/satelite.dart';
import 'package:app_romanos_toni/widgets/bookjourney_section.dart';
import 'package:app_romanos_toni/widgets/description_section.dart';
import 'package:app_romanos_toni/widgets/myback_button.dart';
import 'package:app_romanos_toni/widgets/photo_section.dart';
import 'package:app_romanos_toni/widgets/use_vr_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SateliteScreen extends StatelessWidget {
  const SateliteScreen({super.key, required this.satelite});

  final Satelite satelite;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const double photoHeight = 600;
    return Provider.value(
      value: satelite,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: screenSize.width,
                    height: photoHeight,
                    child: const PhotoWidget(),
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, top: 32.0),
                child: MyBackButton(),
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 16.0, top: 32.0),
                child: UseVRButton(),
              ),
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 500,
                      width: screenSize.width,
                    ),
                    const InfoSection(),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BookJourney(),
            ),
          ],
        ),
      ),
    );
  }
}

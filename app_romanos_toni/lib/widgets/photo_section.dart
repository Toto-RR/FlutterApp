import 'package:app_romanos_toni/satelite/satelite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    final sateliteISS = context.read<Satelite>();
    return Image.asset(
      sateliteISS.photo,
      fit: BoxFit.cover,
    );
  }
}

import 'package:flutter/material.dart';

class FotoWidget extends StatelessWidget {
  const FotoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
      ),
      child: Text("Foto aqui"),
    );
  }
}

import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 200,
      color: Color.fromARGB(255, 88, 88, 88),
      child: Text("Descripcion aqui"),
    );
  }
}

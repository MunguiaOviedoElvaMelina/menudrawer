import 'package:flutter/material.dart';

class Catalogos extends StatelessWidget {
  const Catalogos ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalogos"),
        ),
        body: Center(
          child: Text("Catalogos de la APP"),
        ));
  }
}

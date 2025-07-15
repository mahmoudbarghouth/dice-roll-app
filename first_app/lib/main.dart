import 'package:flutter/material.dart';
import 'package:first_app/gardiant_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(134, 94, 6, 108),
          Color.fromARGB(133, 64, 15, 154),
        ]),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'dart:math';

class Diceroll extends StatefulWidget {
  const Diceroll({super.key});
  @override
  State<Diceroll> createState() {
    return _Dicerollstate();
  }
}

class _Dicerollstate extends State<Diceroll> {
  var image = "assets/images/dice-1.png";
  clicFunction() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      image = "assets/images/dice-$diceRoll.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image, width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: clicFunction,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}

import 'package:first_app/dice_roler.dart';
import 'package:flutter/material.dart';

const startaligement = Alignment.topLeft;
const endAligement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startaligement,
          end: endAligement,
        ),
      ),
      child: Center(child: Diceroll()),
    );
  }
}

import 'package:flutter/material.dart';

class DiceBtn extends StatelessWidget {
  const DiceBtn({super.key, required this.rollDice, required this.diceNumber});

  final void Function() rollDice;
  final int diceNumber;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => rollDice(),
      child: Image(
        image: AssetImage('assets/images/dice$diceNumber.png'),
      ),
    );
  }
}

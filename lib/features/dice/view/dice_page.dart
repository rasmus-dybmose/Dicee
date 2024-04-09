import 'dart:math';

import 'package:dicee/features/dice/widgets/dice_btn.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicee'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DiceBtn(rollDice: rollDice, diceNumber: leftDiceNumber),
            ),
            Expanded(
              child: DiceBtn(rollDice: rollDice, diceNumber: rightDiceNumber),
            ),
          ],
        ),
      ),
    );
  }
}

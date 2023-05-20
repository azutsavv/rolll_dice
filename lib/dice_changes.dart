import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

final randomizer = Random();
class diceChange extends StatefulWidget {
  const diceChange({super.key});

  @override
  State<diceChange> createState() => _diceChangeState();
}

class _diceChangeState extends State<diceChange> {
  var curretdiceroll = 2;

  void rolldice() {
    setState(() { 
      curretdiceroll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$curretdiceroll.png',
          width: wd * 0.6,
        ),
        OutlinedButton(
          onPressed: rolldice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}

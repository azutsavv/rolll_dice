import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:roll_dice/dice_changes.dart';

class RollDice extends StatelessWidget {
  static const routename = '/first';
  RollDice({super.key});

  var activediceimage = 'assets/images/dice-1.png';
  void rolldice() {
    activediceimage = 'assets/images/dice-2.png';
    
  }

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wd = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Roll YOur Dice'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 24, 6, 55),
        ),
        body: Container(
          height: ht,
          width: wd,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 42, 4, 94),
              Color.fromARGB(255, 45, 10, 105),
              Color.fromARGB(255, 84, 40, 172),
              Color.fromARGB(255, 128, 81, 230),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: const Center(
            child: diceChange()
          ),
        ),
      ),
    );
  }
}

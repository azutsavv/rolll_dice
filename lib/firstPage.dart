import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RollDice extends StatelessWidget {
  const RollDice({super.key});

  @override
  Widget build(BuildContext context) {
    double ht =MediaQuery.of(context).size.height;
    double wd =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:  AppBar(
        title:const Text('Roll YOur Dice'),
        centerTitle: true,
      ),

      body:Container(
        height:ht ,
        width: wd,
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 42, 4, 94),
              Color.fromARGB(255, 45, 10, 105),
              Color.fromARGB(255, 84, 40, 172),
              Color.fromARGB(255, 128, 81, 230),
               ],
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
            )
        ),
      ),
    );
  }
}
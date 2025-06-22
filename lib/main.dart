import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red[800],
      appBar: AppBar(

        backgroundColor: Colors.red[900],
        centerTitle: true,
        title: Text(
          'Dice',
          style: TextStyle(
            color: Colors.white,
          ),

        ),
      ),
      body: DiceApp(),
    ),
  ),);
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});


  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$leftDiceNum.png'),
                onPressed: (){
                  setState(() {
                    leftDiceNum = Random().nextInt(6) + 1;
                    rightDiceNum = Random().nextInt(6) + 1;
                  });
                }
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: (){
                  setState(() {
                    rightDiceNum = Random().nextInt(6) + 1;
                    leftDiceNum = Random().nextInt(6) + 1;
                    print(leftDiceNum);
                    print(rightDiceNum);
                  });
                },
                child: Image.asset('images/dice$rightDiceNum.png')
            ),
          ),
        ],
      ),
    );
  }
}




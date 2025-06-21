import 'package:flutter/material.dart';

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

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice1.png'),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice1.png'),
                ),
            )
          ],
        ),
      ),
    );
  }
}

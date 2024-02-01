import 'package:dice_roller/roller_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(235, 55, 47, 92),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: Text(
            "Dice App",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: RollerPage(),
      ),
    );
  }
}

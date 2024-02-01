import 'dart:math';

import 'package:flutter/material.dart';

class RollerPage extends StatefulWidget {
  @override
  State<RollerPage> createState() => _RollerPageState();
}

class _RollerPageState extends State<RollerPage> {
  // RollerPage({super.key});
  int _dice1Count = 6;
  int _dice2Count = 1;

// Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    child: Image.asset('assets/$_dice1Count.png'),
                    width: 100,
                    height: 200,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    child: Image.asset('assets/$_dice2Count.png'),
                    width: 100,
                    height: 200,
                  ),
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              final Random random = Random();
              _dice1Count = random.nextInt(6) + 1;
              _dice2Count = random.nextInt(6) + 1;
            });
          },
          child: Text("Roll Dice"),
        )
      ],
    );
  }
}

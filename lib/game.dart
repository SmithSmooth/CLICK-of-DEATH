import 'dart:async';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final void Function()? updateUserScore;
  // ignore: use_key_in_widget_constructors
  const Game(this.updateUserScore);
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: updateUserScore,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()),
        padding: MaterialStateProperty.all(const EdgeInsets.all(40)),
        backgroundColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 4, 111, 240)), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return const Color.fromARGB(255, 9, 208, 16);
          } // <-- Splash color
        }),
      ),
      child: const Text(
        "G",
        style: TextStyle(
            fontFamily: "Serif", fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}

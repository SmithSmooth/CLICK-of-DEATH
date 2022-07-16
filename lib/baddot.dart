
import 'package:flutter/material.dart';


class BadDot extends StatelessWidget {
  final void Function()? reduceUserScore;
  // ignore: use_key_in_widget_constructors
  const BadDot(this.reduceUserScore);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: reduceUserScore,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()),
        padding: MaterialStateProperty.all(const EdgeInsets.all(40)),
        backgroundColor: MaterialStateProperty.all(
            Colors.red), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.amberAccent;
          } // <-- Splash color
        }),
      ),
      child: const Text(
        "D",
        style: TextStyle(
            fontFamily: "Serif", fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}

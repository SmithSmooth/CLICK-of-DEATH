import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:positioned_tap_detector_2/positioned_tap_detector_2.dart';
import './appbarstuff.dart';
import './dot2.dart';
import './game.dart';
import 'dart:async';
import 'dart:math';

void main() {
  //upadate on the 26th of July, 2022
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  
  runApp(const MyApp());
}

var playerScore = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Click Of Death',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: const AppBarStuff(),
          body: DotScreen(playerScore),
        ));
  }
}



import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import './game.dart';
import './baddot.dart';

var generatedRandoms = <double>{};

//{198.0, 189.0, 58.0, 278.0, 51.0, 79.0, 385.0, 371.0, 137.0, 168.0, 432.0, 337.0, 405.0, 379.0, 446.0, 70.0, 124.0, 95.0, 161.0, 366.0}

void radamnCordinates() {
  final rng = Random();
  //int randomNumber = Random.nextInt(90) + 10;
  while (generatedRandoms.length < 19) {
    final gr = rng.nextInt(400).toDouble() + 80;
    generatedRandoms.add(gr);
  }
  //print(generatedRandoms);
}

// ignore: must_be_immutable
class DotScreen extends StatefulWidget {
  int playerScore = 0;
  DotScreen(this.playerScore, {Key? key}) : super(key: key);

  @override
  State<DotScreen> createState() => _DotScreenState();
}

class _DotScreenState extends State<DotScreen> {
  final double _circleSize = 110;
  final double _appbarHeight = 100;

  Offset? _circlePosition;
  double _slope = 0;
  double _xDistance = 0;
  int _tapCount = 0;

  ///*
  Offset? _circlePosition2;
  double _slope2 = 0;
  double _xDistance2 = 0;
  int _tapCount2 = 0;

  Offset? _circlePosition3;
  double _slope3 = 0;
  double _xDistance3 = 0;
  int _tapCount3 = 0;

  Offset? _circlePosition4;
  double _slope4 = 0;
  double _xDistance4 = 0;
  int _tapCount4 = 0;

  Offset? _circlePosition5;
  double _slope5 = 0;
  double _xDistance5 = 0;
  int _tapCount5 = 0;

  Offset? _circlePosition6;
  double _slope6 = 0;
  double _xDistance6 = 0;
  int _tapCount6 = 0;

  Offset? _circlePosition7;
  double _slope7 = 0;
  double _xDistance7 = 0;
  int _tapCount7 = 0;

  Offset? _circlePosition8;
  double _slope8 = 0;
  double _xDistance8 = 0;
  int _tapCount8 = 0;

  Offset? _circlePosition9;
  double _slope9 = 0;
  double _xDistance9 = 0;
  int _tapCount9 = 0;

  Offset? _circlePosition10;
  double _slope10 = 0;
  double _xDistance10 = 0;
  int _tapCount10 = 0;

  Offset? _circlePosition11;
  double _slope11 = 0;
  double _xDistance11 = 0;
  int _tapCount11 = 0;

  Offset? _circlePosition12;
  double _slope12 = 0;
  double _xDistance12 = 0;
  int _tapCount12 = 0;

  Offset? _circlePosition13;
  double _slope13 = 0;
  double _xDistance13 = 0;
  int _tapCount13 = 0;

  Offset? _circlePosition14;
  double _slope14 = 0;
  double _xDistance14 = 0;
  int _tapCount14 = 0;

  Offset? _circlePosition15;
  double _slope15 = 0;
  double _xDistance15 = 0;
  int _tapCount15 = 0;

  Offset? _circlePosition17;
  double _slope17 = 0;
  double _xDistance17 = 0;
  int _tapCount17 = 0;

  Offset? _circlePosition16;
  double _slope16 = 0;
  double _xDistance16 = 0;
  int _tapCount16 = 0;
  //*/

  int appstate = 0; //means, home screen of the game
  int speedOfBall = 10;

  void updateUserScore() {
    //print("working");
    //print(widget.playerScore);
    setState(() {
      widget.playerScore = widget.playerScore + 1;
    });
  }

  void reduceUserScore() {
    setState(() {
      widget.playerScore = widget.playerScore - 10;
    });
  }

  void moveRight(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition = Offset(_circlePosition!.dx + _xDistance,
            _circlePosition!.dy - slope * _xDistance);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition!.dy < 0 ||
          _circlePosition!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft(-slope, i);
      }
    });
  }

  void moveLeft(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition = Offset(_circlePosition!.dx - _xDistance,
            _circlePosition!.dy + slope * _xDistance);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition!.dy < 0 ||
          _circlePosition!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition!.dx < 0) {
        timer.cancel();
        moveRight(-slope, i);
      }
    });
  }

  ///*
  void moveRight2(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount2 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance2 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition2 = Offset(_circlePosition2!.dx + _xDistance2,
            _circlePosition2!.dy - slope * _xDistance2);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition2!.dy < 0 ||
          _circlePosition2!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight2(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition2!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft2(-slope, i);
      }
    });
  }

  void moveLeft2(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount2 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance2 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition2 = Offset(_circlePosition2!.dx - _xDistance2,
            _circlePosition2!.dy + slope * _xDistance2);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition2!.dy < 0 ||
          _circlePosition2!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft2(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition2!.dx < 0) {
        timer.cancel();
        moveRight2(-slope, i);
      }
    });
  }

  void moveRight3(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount3 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance3 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition3 = Offset(_circlePosition3!.dx + _xDistance3,
            _circlePosition3!.dy - slope * _xDistance3);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition3!.dy < 0 ||
          _circlePosition3!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight3(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition3!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft3(-slope, i);
      }
    });
  }

  void moveLeft3(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount3 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance3 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition3 = Offset(_circlePosition3!.dx - _xDistance3,
            _circlePosition3!.dy + slope * _xDistance3);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition3!.dy < 0 ||
          _circlePosition3!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft3(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition3!.dx < 0) {
        timer.cancel();
        moveRight3(-slope, i);
      }
    });
  }

  void moveRight4(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount4 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance4 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition4 = Offset(_circlePosition4!.dx + _xDistance4,
            _circlePosition4!.dy - slope * _xDistance4);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition4!.dy < 0 ||
          _circlePosition4!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight4(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition4!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft4(-slope, i);
      }
    });
  }

  void moveLeft4(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount4 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance4 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition4 = Offset(_circlePosition4!.dx - _xDistance4,
            _circlePosition4!.dy + slope * _xDistance4);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition4!.dy < 0 ||
          _circlePosition4!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft4(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition4!.dx < 0) {
        timer.cancel();
        moveRight4(-slope, i);
      }
    });
  }

  void moveRight5(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount5 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance5 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition5 = Offset(_circlePosition5!.dx + _xDistance5,
            _circlePosition5!.dy - slope * _xDistance5);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition5!.dy < 0 ||
          _circlePosition5!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight5(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition5!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft5(-slope, i);
      }
    });
  }

  void moveLeft5(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount5 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance5 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition5 = Offset(_circlePosition5!.dx - _xDistance5,
            _circlePosition5!.dy + slope * _xDistance5);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition5!.dy < 0 ||
          _circlePosition5!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft5(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition5!.dx < 0) {
        timer.cancel();
        moveRight5(-slope, i);
      }
    });
  }

  void moveRight6(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount6 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance6 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition6 = Offset(_circlePosition6!.dx + _xDistance6,
            _circlePosition6!.dy - slope * _xDistance6);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition6!.dy < 0 ||
          _circlePosition6!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight6(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition6!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft6(-slope, i);
      }
    });
  }

  void moveLeft6(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount6 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance6 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition6 = Offset(_circlePosition6!.dx - _xDistance6,
            _circlePosition6!.dy + slope * _xDistance6);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition6!.dy < 0 ||
          _circlePosition6!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft6(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition6!.dx < 0) {
        timer.cancel();
        moveRight6(-slope, i);
      }
    });
  }

  void moveRight7(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount7 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance7 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition7 = Offset(_circlePosition7!.dx + _xDistance7,
            _circlePosition7!.dy - slope * _xDistance7);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition7!.dy < 0 ||
          _circlePosition7!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight7(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition7!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft7(-slope, i);
      }
    });
  }

  void moveLeft7(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount7 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance7 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition7 = Offset(_circlePosition7!.dx - _xDistance7,
            _circlePosition7!.dy + slope * _xDistance7);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition7!.dy < 0 ||
          _circlePosition7!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft7(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition7!.dx < 0) {
        timer.cancel();
        moveRight7(-slope, i);
      }
    });
  }

  void moveRight8(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount8 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance8 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition8 = Offset(_circlePosition8!.dx + _xDistance8,
            _circlePosition8!.dy - slope * _xDistance8);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition8!.dy < 0 ||
          _circlePosition8!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight8(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition8!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft8(-slope, i);
      }
    });
  }

  void moveLeft8(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount8 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance8 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition8 = Offset(_circlePosition8!.dx - _xDistance8,
            _circlePosition8!.dy + slope * _xDistance8);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition8!.dy < 0 ||
          _circlePosition8!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft8(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition8!.dx < 0) {
        timer.cancel();
        moveRight8(-slope, i);
      }
    });
  }

  void moveRight9(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount9 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance9 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition9 = Offset(_circlePosition9!.dx + _xDistance9,
            _circlePosition9!.dy - slope * _xDistance9);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition9!.dy < 0 ||
          _circlePosition9!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight9(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition9!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft9(-slope, i);
      }
    });
  }

  void moveLeft9(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount9 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance9 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition9 = Offset(_circlePosition9!.dx - _xDistance9,
            _circlePosition9!.dy + slope * _xDistance9);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition9!.dy < 0 ||
          _circlePosition9!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft9(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition9!.dx < 0) {
        timer.cancel();
        moveRight9(-slope, i);
      }
    });
  }

  void moveRight10(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount10 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance10 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition10 = Offset(_circlePosition10!.dx + _xDistance10,
            _circlePosition10!.dy - slope * _xDistance10);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition10!.dy < 0 ||
          _circlePosition10!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight10(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition10!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft10(-slope, i);
      }
    });
  }

  void moveLeft10(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount10 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance10 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition10 = Offset(_circlePosition10!.dx - _xDistance10,
            _circlePosition10!.dy + slope * _xDistance10);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition10!.dy < 0 ||
          _circlePosition10!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft10(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition10!.dx < 0) {
        timer.cancel();
        moveRight10(-slope, i);
      }
    });
  }

  void moveRight11(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount11 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance11 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition11 = Offset(_circlePosition11!.dx + _xDistance11,
            _circlePosition11!.dy - slope * _xDistance11);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition11!.dy < 0 ||
          _circlePosition11!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight11(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition11!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft11(-slope, i);
      }
    });
  }

  void moveLeft11(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount11 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance11 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition11 = Offset(_circlePosition11!.dx - _xDistance11,
            _circlePosition11!.dy + slope * _xDistance11);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition11!.dy < 0 ||
          _circlePosition11!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft11(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition11!.dx < 0) {
        timer.cancel();
        moveRight11(-slope, i);
      }
    });
  }

  void moveRight12(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount12 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance12 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition12 = Offset(_circlePosition12!.dx + _xDistance12,
            _circlePosition12!.dy - slope * _xDistance12);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition12!.dy < 0 ||
          _circlePosition12!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight12(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition12!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft12(-slope, i);
      }
    });
  }

  void moveLeft12(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount12 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance12 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition12 = Offset(_circlePosition12!.dx - _xDistance12,
            _circlePosition12!.dy + slope * _xDistance12);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition12!.dy < 0 ||
          _circlePosition12!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft12(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition12!.dx < 0) {
        timer.cancel();
        moveRight12(-slope, i);
      }
    });
  }

  void moveRight13(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount13 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance13 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition13 = Offset(_circlePosition13!.dx + _xDistance13,
            _circlePosition13!.dy - slope * _xDistance13);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition13!.dy < 0 ||
          _circlePosition13!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight13(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition13!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft13(-slope, i);
      }
    });
  }

  void moveLeft13(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount13 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance13 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition13 = Offset(_circlePosition13!.dx - _xDistance13,
            _circlePosition13!.dy + slope * _xDistance13);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition13!.dy < 0 ||
          _circlePosition13!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft13(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition13!.dx < 0) {
        timer.cancel();
        moveRight13(-slope, i);
      }
    });
  }

  void moveRight14(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount14 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance14 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition14 = Offset(_circlePosition14!.dx + _xDistance14,
            _circlePosition14!.dy - slope * _xDistance14);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition14!.dy < 0 ||
          _circlePosition14!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight14(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition14!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft14(-slope, i);
      }
    });
  }

  void moveLeft14(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount14 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance14 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition14 = Offset(_circlePosition14!.dx - _xDistance14,
            _circlePosition14!.dy + slope * _xDistance14);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition14!.dy < 0 ||
          _circlePosition14!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft14(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition14!.dx < 0) {
        timer.cancel();
        moveRight14(-slope, i);
      }
    });
  }

  void moveRight15(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount15 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance15 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition15 = Offset(_circlePosition15!.dx + _xDistance15,
            _circlePosition15!.dy - slope * _xDistance15);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition15!.dy < 0 ||
          _circlePosition15!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight15(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition15!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft15(-slope, i);
      }
    });
  }

  void moveLeft15(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount15 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance15 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition15 = Offset(_circlePosition15!.dx - _xDistance15,
            _circlePosition15!.dy + slope * _xDistance15);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition15!.dy < 0 ||
          _circlePosition15!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft15(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition15!.dx < 0) {
        timer.cancel();
        moveRight15(-slope, i);
      }
    });
  }

  void moveRight16(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount16 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance16 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition16 = Offset(_circlePosition16!.dx + _xDistance16,
            _circlePosition16!.dy - slope * _xDistance16);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition16!.dy < 0 ||
          _circlePosition16!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight16(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition16!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft16(-slope, i);
      }
    });
  }

  void moveLeft16(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount16 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance16 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition16 = Offset(_circlePosition16!.dx - _xDistance16,
            _circlePosition16!.dy + slope * _xDistance16);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition16!.dy < 0 ||
          _circlePosition16!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft16(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition16!.dx < 0) {
        timer.cancel();
        moveRight16(-slope, i);
      }
    });
  }

  void moveRight17(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount17 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again
      }
      _xDistance17 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition17 = Offset(_circlePosition17!.dx + _xDistance17,
            _circlePosition17!.dy - slope * _xDistance17);
      });

//if the ball bounces off the top or bottom

      if (_circlePosition17!.dy < 0 ||
          _circlePosition17!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveRight17(-slope, i);
      }
//if the ball bounces off the right
      if (_circlePosition17!.dx >
          MediaQuery.of(context).size.width - _circleSize) {
        timer.cancel();
        moveLeft17(-slope, i);
      }
    });
  }

  void moveLeft17(double slope, int i) {
    Timer.periodic(Duration(milliseconds: speedOfBall), (timer) {
      if (_tapCount17 != i) {
        timer.cancel();
//Stop moving in this direction when the screen is tapped again

      }
      _xDistance17 = sqrt(1 / (1 + pow(slope, 2)));
      setState(() {
        _circlePosition17 = Offset(_circlePosition17!.dx - _xDistance17,
            _circlePosition17!.dy + slope * _xDistance17);
      });

//if the ball bounces off the top or bottom
      if (_circlePosition17!.dy < 0 ||
          _circlePosition17!.dy >
              MediaQuery.of(context).size.height -
                  _circleSize -
                  _appbarHeight) {
        timer.cancel();
        moveLeft17(-slope, i);
      }
//if the ball bounces off the left
      if (_circlePosition17!.dx < 0) {
        timer.cancel();
        moveRight17(-slope, i);
      }
    });
  }

//*/

  @override
  Widget build(BuildContext context) {
    _circlePosition ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    ///*
    _circlePosition2 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 4,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 4);

    _circlePosition3 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 8,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 8);

    _circlePosition4 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 8,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 8);

    _circlePosition5 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition6 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 4,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 4);

    _circlePosition7 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 32,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
            32);

    _circlePosition8 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition9 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition10 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition11 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition12 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition13 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition14 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition15 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition16 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);

    _circlePosition17 ??= Offset(
        (MediaQuery.of(context).size.width - _circleSize) / 2,
        (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) / 2);
//*/

    void startGame() {
      radamnCordinates();

      _tapCount++;

      _slope = (-generatedRandoms.elementAt(0) + _circlePosition!.dy) /
          (generatedRandoms.elementAt(0) - _circlePosition!.dx);
      if (generatedRandoms.elementAt(0) < _circlePosition!.dx) {
        moveLeft(_slope, _tapCount);
      }
      if (generatedRandoms.elementAt(0) > _circlePosition!.dx) {
        moveRight(_slope, _tapCount);
      }

      _tapCount2++;

      _slope2 = (generatedRandoms.elementAt(1) + _circlePosition2!.dy) /
          (generatedRandoms.elementAt(1) - _circlePosition2!.dx);
      if (generatedRandoms.elementAt(1) < _circlePosition2!.dx) {
        moveLeft2(_slope2, _tapCount2);
      }
      if (generatedRandoms.elementAt(1) > _circlePosition2!.dx) {
        moveRight2(_slope2, _tapCount2);
      }

      _tapCount3++;

      _slope3 = (-generatedRandoms.elementAt(2) + _circlePosition3!.dy) /
          (generatedRandoms.elementAt(2) - _circlePosition3!.dx);
      if (generatedRandoms.elementAt(2) < _circlePosition3!.dx) {
        moveLeft3(_slope3, _tapCount3);
      }
      if (generatedRandoms.elementAt(2) > _circlePosition3!.dx) {
        moveRight3(_slope3, _tapCount3);
      }

      _tapCount4++;

      _slope4 = (-generatedRandoms.elementAt(3) + _circlePosition4!.dy) /
          (generatedRandoms.elementAt(3) - _circlePosition4!.dx);
      if (generatedRandoms.elementAt(3) < _circlePosition4!.dx) {
        moveLeft4(_slope4, _tapCount4);
      }
      if (generatedRandoms.elementAt(3) > _circlePosition4!.dx) {
        moveRight4(_slope4, _tapCount4);
      }

      _tapCount5++;

      _slope5 = (-generatedRandoms.elementAt(4) + _circlePosition5!.dy) /
          (generatedRandoms.elementAt(4) - _circlePosition5!.dx);
      if (generatedRandoms.elementAt(4) < _circlePosition5!.dx) {
        moveLeft5(_slope5, _tapCount5);
      }
      if (generatedRandoms.elementAt(4) > _circlePosition5!.dx) {
        moveRight5(_slope5, _tapCount5);
      }

      _tapCount6++;

      _slope6 = (-generatedRandoms.elementAt(5) + _circlePosition6!.dy) /
          (generatedRandoms.elementAt(5) - _circlePosition6!.dx);
      if (generatedRandoms.elementAt(5) < _circlePosition6!.dx) {
        moveLeft6(_slope6, _tapCount6);
      }
      if (generatedRandoms.elementAt(5) > _circlePosition6!.dx) {
        moveRight6(_slope6, _tapCount6);
      }

      _tapCount7++;
      _slope7 = (-generatedRandoms.elementAt(6) + _circlePosition7!.dy) /
          (generatedRandoms.elementAt(6) - _circlePosition7!.dx);
      if (generatedRandoms.elementAt(6) < _circlePosition7!.dx) {
        moveLeft7(_slope7, _tapCount7);
      }
      if (generatedRandoms.elementAt(6) > _circlePosition7!.dx) {
        moveRight7(_slope7, _tapCount7);
      }

      _tapCount8++;
      _slope8 = (-generatedRandoms.elementAt(7) + _circlePosition8!.dy) /
          (generatedRandoms.elementAt(7) - _circlePosition8!.dx);
      if (generatedRandoms.elementAt(7) < _circlePosition8!.dx) {
        moveLeft8(_slope8, _tapCount8);
      }
      if (generatedRandoms.elementAt(7) > _circlePosition7!.dx) {
        moveRight8(_slope8, _tapCount8);
      }

      _tapCount9++;
      _slope9 = (-generatedRandoms.elementAt(8) + _circlePosition9!.dy) /
          (generatedRandoms.elementAt(8) - _circlePosition9!.dx);
      if (generatedRandoms.elementAt(8) < _circlePosition9!.dx) {
        moveLeft9(_slope9, _tapCount9);
      }
      if (generatedRandoms.elementAt(8) > _circlePosition9!.dx) {
        moveRight9(_slope9, _tapCount9);
      }

      _tapCount10++;
      _slope10 = (-generatedRandoms.elementAt(9) + _circlePosition10!.dy) /
          (generatedRandoms.elementAt(9) - _circlePosition10!.dx);
      if (generatedRandoms.elementAt(9) < _circlePosition10!.dx) {
        moveLeft10(_slope10, _tapCount10);
      }
      if (generatedRandoms.elementAt(9) > _circlePosition10!.dx) {
        moveRight10(_slope10, _tapCount10);
      }

      _tapCount11++;
      _slope11 = (-generatedRandoms.elementAt(10) + _circlePosition11!.dy) /
          (generatedRandoms.elementAt(10) - _circlePosition11!.dx);
      if (generatedRandoms.elementAt(10) < _circlePosition11!.dx) {
        moveLeft11(_slope11, _tapCount11);
      }
      if (generatedRandoms.elementAt(10) > _circlePosition11!.dx) {
        moveRight11(_slope11, _tapCount11);
      }

      _tapCount12++;
      _slope12 = (-generatedRandoms.elementAt(11) + _circlePosition12!.dy) /
          (generatedRandoms.elementAt(11) - _circlePosition12!.dx);
      if (generatedRandoms.elementAt(11) < _circlePosition12!.dx) {
        moveLeft12(_slope12, _tapCount12);
      }
      if (generatedRandoms.elementAt(11) > _circlePosition12!.dx) {
        moveRight12(_slope12, _tapCount12);
      }

      _tapCount13++;
      _slope13 = (-generatedRandoms.elementAt(12) + _circlePosition13!.dy) /
          (generatedRandoms.elementAt(12) - _circlePosition13!.dx);
      if (generatedRandoms.elementAt(12) < _circlePosition13!.dx) {
        moveLeft13(_slope13, _tapCount13);
      }
      if (generatedRandoms.elementAt(12) > _circlePosition13!.dx) {
        moveRight13(_slope13, _tapCount13);
      }

      _tapCount14++;
      _slope14 = (-generatedRandoms.elementAt(13) + _circlePosition14!.dy) /
          (generatedRandoms.elementAt(13) - _circlePosition14!.dx);
      if (generatedRandoms.elementAt(13) < _circlePosition14!.dx) {
        moveLeft14(_slope14, _tapCount14);
      }
      if (generatedRandoms.elementAt(13) > _circlePosition14!.dx) {
        moveRight14(_slope14, _tapCount14);
      }

      _tapCount15++;
      _slope15 = (-generatedRandoms.elementAt(14) + _circlePosition15!.dy) /
          (generatedRandoms.elementAt(14) - _circlePosition15!.dx);
      if (generatedRandoms.elementAt(14) < _circlePosition15!.dx) {
        moveLeft15(_slope15, _tapCount15);
      }
      if (generatedRandoms.elementAt(14) > _circlePosition15!.dx) {
        moveRight15(_slope15, _tapCount15);
      }

      _tapCount16++;
      _slope16 = (generatedRandoms.elementAt(15) + _circlePosition16!.dy) /
          (generatedRandoms.elementAt(15) - _circlePosition16!.dx);
      if (generatedRandoms.elementAt(15) < _circlePosition16!.dx) {
        moveLeft16(_slope16, _tapCount16);
      }
      if (generatedRandoms.elementAt(15) > _circlePosition16!.dx) {
        moveRight16(_slope16, _tapCount16);
      }

      _tapCount17++;
      _slope17 = (-generatedRandoms.elementAt(16) + _circlePosition17!.dy) /
          (generatedRandoms.elementAt(16) - _circlePosition17!.dx);
      if (generatedRandoms.elementAt(16) < _circlePosition17!.dx) {
        moveLeft17(_slope17, _tapCount17);
      }
      if (generatedRandoms.elementAt(16) > _circlePosition17!.dx) {
        moveRight17(_slope17, _tapCount17);
      }

      setState(() {
        appstate = 1; //means go to the game page
        //and start playing.
      });
    }

    void gameOver() {
      //tapcounts
      _tapCount++;
      _tapCount2++;
      _tapCount3++;
      _tapCount4++;
      _tapCount5++;
      _tapCount6++;
      _tapCount7++;
      _tapCount8++;
      _tapCount9++;
      _tapCount10++;
      _tapCount11++;
      _tapCount12++;
      _tapCount13++;
      _tapCount14++;
      _tapCount15++;
      _tapCount16++;
      _tapCount17++;

      setState(() {
        _circlePosition = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        ///*
        _circlePosition2 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 4,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                4);

        _circlePosition3 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 8,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                8);

        _circlePosition4 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 8,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                8);

        _circlePosition5 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition6 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 4,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                4);
        _circlePosition7 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 32,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                32);

        _circlePosition8 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition9 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition10 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);
        _circlePosition11 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition12 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition13 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition14 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition15 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition16 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);

        _circlePosition17 = Offset(
            (MediaQuery.of(context).size.width - _circleSize) / 2,
            (MediaQuery.of(context).size.height - _circleSize - _appbarHeight) /
                2);
//*/
        //reset back to middle
        appstate = 2; // means game is finished , and we go to finish game page
      });
    }

    void playAgain() {
      setState(() {
        generatedRandoms.clear();
        appstate = 0;
        widget.playerScore = 0;
      });
    }

    return Scaffold(
        body: (appstate == 0)
            ? Column(children: [
                Container(
                    padding: const EdgeInsets.only(top: 50, bottom: 100),
                    child: const Text(
                      "Tap The Blue Balls To Earn 1 Point 👍.\n\n Tap The Red Ball Earn -10 Points 👎. \n\n BestOf Luck !!😎",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "serif",
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400),
                    )),
                Center(
                    child: ElevatedButton(
                  onPressed: startGame,
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      elevation: MaterialStateProperty.all(10),
                      textStyle: MaterialStateProperty.all(const TextStyle(
                          fontFamily: "serif",
                          fontSize: 50,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold))),
                  child: const Text('Start'),
                ))
              ])
            : (appstate == 1)
                ? Stack(
                    fit: StackFit.expand,
                    children: [
                      /*PositionedTapDetector2(
                  onTap: (position) {
                    _tapCount++;
                    _slope = (-position.global.dy + _circlePosition!.dy) /
                        (position.global.dx - _circlePosition!.dx);
                    if (position.global.dx < _circlePosition!.dx) {
                      moveLeft(_slope, _tapCount);
                    }
                    if (position.global.dx > _circlePosition!.dx) {
                      moveRight(_slope, _tapCount);
                    }
                  },
                  onLongPress: (position) {
                    _tapCount++; //stop moving
                    setState(() {
                      _circlePosition = Offset(
                          (MediaQuery.of(context).size.width - _circleSize) / 2,
                          (MediaQuery.of(context).size.height -
                                  _circleSize -
                                  _appbarHeight) /
                              2);
                      //reset back to middle
                    });
                  },
                ),*/
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        verticalDirection: VerticalDirection.up,
                        textBaseline: TextBaseline.alphabetic,
                        textDirection: TextDirection.ltr,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Your Score : ${widget.playerScore.toString()}",
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontFamily: "Tahoma", fontSize: 25),
                          ),
                          ElevatedButton(
                              onPressed: gameOver,
                              child: const Text("Finish Game",
                                  style: TextStyle(fontFamily: "Tahoma"))),
                        ],
                      ), //showing the player Score .Thanks To God
                      Positioned(
                        left: _circlePosition!.dx,
                        top: _circlePosition!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),
// /*
                      Positioned(
                        left: _circlePosition2!.dx,
                        top: _circlePosition2!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        left: _circlePosition3!.dx,
                        top: _circlePosition3!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        right: _circlePosition4!.dx,
                        bottom: _circlePosition4!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: BadDot(reduceUserScore),
                        ),
                      ),

                      Positioned(
                        right: _circlePosition5!.dx,
                        bottom: _circlePosition5!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        right: _circlePosition6!.dx,
                        bottom: _circlePosition6!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        right: _circlePosition7!.dx,
                        bottom: _circlePosition7!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        left: _circlePosition8!.dx,
                        bottom: _circlePosition8!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),
                      Positioned(
                        left: _circlePosition9!.dx,
                        bottom: _circlePosition9!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: BadDot(reduceUserScore),
                        ),
                      ),

                      Positioned(
                        left: _circlePosition10!.dx,
                        top: _circlePosition10!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        left: _circlePosition11!.dx,
                        top: _circlePosition11!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        left: _circlePosition12!.dx,
                        top: _circlePosition12!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        left: _circlePosition13!.dx,
                        top: _circlePosition13!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        left: _circlePosition14!.dx,
                        top: _circlePosition14!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: BadDot(reduceUserScore),
                        ),
                      ),

                      Positioned(
                        right: _circlePosition15!.dx,
                        bottom: _circlePosition15!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        right: _circlePosition16!.dx,
                        bottom: _circlePosition16!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: Game(updateUserScore),
                        ),
                      ),

                      Positioned(
                        right: _circlePosition17!.dx,
                        top: _circlePosition17!.dy,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: _circleSize,
                          width: _circleSize,
                          child: BadDot(reduceUserScore),
                        ),
                      ),
                      //  */
                    ],
                  )
                : Center(
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 60),
                            child: Text(
                              "Your Score : ${widget.playerScore}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: "Tahoma",
                                  fontSize: 34,
                                  fontWeight: FontWeight.w300),
                            )),
                        ElevatedButton(
                            onPressed: playAgain,
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.redAccent)),
                            child: const Text("Play Again",
                                style: TextStyle(
                                    fontFamily: "Tahoma",
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700)))
                      ],
                    ),
                  ));
  }
}

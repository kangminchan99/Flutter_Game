import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_game/joystick.dart';
import 'package:flutter_game/ship.dart';

import 'engine.dart';

class SpaceShip extends StatelessWidget {
  SpaceShip({Key? key}) : super(key: key) {
    _joystick = JoyStick(onMove: (int direction) => {_ship.move(direction)});

    _ship = Ship();

    _gameEngine.getControls().addControl(_joystick);
    _gameEngine.getControls().addControl(_ship);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GAME')),
      body: SizedBox(
        // 화면 사이즈 맥스로 설정
        width: double.infinity,
        height: double.infinity,
        child: _gameEngine.getCustomPaint(),
      ),
    );
  }

  final _gameEngine = GameEngine();

  // 참조변수 선언
  late final _joystick;
  late final _ship;
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

// 정수의 디렉션 파라미터를 가지는 함수의 형태
typedef MoveCallback = void Function(int direction);

const BUTTON_SIZE = 60;
const SHIP_SIZE = 60;
const BUTTON_POSITION_LEFT = -1;
const BUTTON_POSITION_RIGHT = 1;

class JoyStick extends GetMaterialController {
  final MoveCallback onMove;

  // 객체가 생성될 때 무조건 이벤트를 지정 받도록 한다.
  JoyStick({required this.onMove});

  @override
  void Start(Canvas canvas, Size size, int current) {
    var x = 20;
    var y = size.height - BUTTON_SIZE;
  }

  @override
  void tick(Canvas canvas, Size size, int current, int term) {
    const radius = BUTTON_SIZE / 2;
    var width = SHIP_SIZE;
    var height = SHIP_SIZE;
    var x = (size.width - width) / 2;
    var y = size.height - SHIP_SIZE * 2;
    canvas.drawCircle(Offset(x + radius, y + radius), radius, Paint());
  }

  @override
  void onHorizontalDragStart(DragStartDetails details) {
    onMove(BUTTON_POSITION_LEFT);
  }
}

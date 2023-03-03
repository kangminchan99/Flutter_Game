import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_game/engine.dart';

const SHIP_SIZE = 60;

class Ship extends GetMaterialController {
  void move(int direction) {}

  @override
  void start(Canvas canvas, Size size, int current) {
    var width = SHIP_SIZE;
    var height = SHIP_SIZE;
    var x = (size.width - width) / 2;
    var y = size.height - SHIP_SIZE * 2;
  }

  @override
  void tick(Canvas canvas, Size size, int current) {
    const radius = SHIP_SIZE / 2;
    var width = SHIP_SIZE;
    var x = (size.width - width) / 2;
    var y = size.height - SHIP_SIZE * 2;
    canvas.drawCircle(Offset(x + radius, y + radius), radius, Paint());
  }
}

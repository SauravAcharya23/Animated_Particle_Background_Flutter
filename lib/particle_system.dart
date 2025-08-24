import 'dart:math' as math;

import 'package:flutter/material.dart';

class Particle {
  late double x;
  late double y;
  late double speedX;
  late double speedY;
  late double size;
  late Color color;
  late double opacity;

  Particle() {
    reset();
  }

  void reset() {
    x = math.Random().nextDouble() * 400;
    y = math.Random().nextDouble() * 800;
    speedX = (math.Random().nextDouble() - 0.5) * 0.5;
    speedY = (math.Random().nextDouble() - 0.5) * 0.5;
    size = math.Random().nextDouble() * 3 + 1;
    opacity = math.Random().nextDouble() * 0.5 + 0.2;

    final colors = [Colors.cyan, Colors.purple, Colors.pink, Colors.blue];
    color = colors[math.Random().nextInt(colors.length)];
  }

  void update(Size size) {
    x += speedX;
    y += speedY;

    if (x < 0 || x > size.width || y < 0 || y > size.height) {
      reset();
      x = math.Random().nextDouble() * size.width;
      y = math.Random().nextDouble() * size.height;
    }
  }
}

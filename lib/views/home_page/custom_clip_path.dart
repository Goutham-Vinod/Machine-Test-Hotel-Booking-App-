import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(-0.5, -0.5);
    path_0.cubicTo(157.167, -0.5, 314.833, -0.5, 472.5, -0.5);
    path_0.cubicTo(472.5, 23.5, 472.5, 47.5, 472.5, 71.5);
    path_0.cubicTo(452.103, 124.299, 425.936, 173.965, 394, 220.5);
    path_0.cubicTo(345.282, 287.442, 279.782, 327.942, 197.5, 342);
    path_0.cubicTo(130.998, 353.698, 64.9982, 351.531, -0.5, 335.5);
    path_0.cubicTo(-0.5, 223.5, -0.5, 111.5, -0.5, -0.5);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

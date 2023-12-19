
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

    // Path path_0 = Path();
    // path_0.moveTo(size.height * -0.5, size.height * -0.5);
    // path_0.cubicTo(
    //     size.height * 157.167,
    //     size.height * -0.5,
    //     size.height * 314.833,
    //     size.height * -0.5,
    //     size.height * 472.5,
    //     size.height * -0.5);
    // path_0.cubicTo(size.height * 472.5, size.height * 23.5, size.height * 472.5,
    //     size.height * 47.5, size.height * 472.5, size.height * 71.5);
    // path_0.cubicTo(
    //     size.height * 452.103,
    //     size.height * 124.299,
    //     size.height * 425.936,
    //     size.height * 173.965,
    //     size.height * 394,
    //     size.height * 220.5);
    // path_0.cubicTo(
    //     size.height * 345.282,
    //     size.height * 287.442,
    //     size.height * 279.782,
    //     size.height * 327.942,
    //     size.height * 197.5,
    //     size.height * 342);
    // path_0.cubicTo(
    //     size.height * 130.998,
    //     size.height * 353.698,
    //     size.height * 64.9982,
    //     size.height * 351.531,
    //     size.height * -0.5,
    //     size.height * 335.5);
    // path_0.cubicTo(size.height * -0.5, size.height * 223.5, size.height * -0.5,
    //     size.height * 111.5, size.height * -0.5, size.height * -0.5);
    // path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

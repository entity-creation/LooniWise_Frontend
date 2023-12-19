import 'package:flutter/material.dart';

class MobileCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.7);
    var firstStart = Offset(size.width / 5, size.height + 5);
    var firstEnd = Offset(size.width / 2, size.height - 150);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width - (size.width / 5.60), size.width - 40);
    var secondEnd = Offset(size.width, size.height - 100);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

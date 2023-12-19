import 'package:flutter/material.dart';

class MobileSigninClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height * 0.9);
    var firstStart = Offset(size.width / 5, size.height + 5);
    var firstEnd = Offset(size.width * 0.6, size.height - 50);

    //Setting the first quadratic bezier
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width * 0.8, size.height - 80);
    var secondEnd = Offset(size.width, size.height - 50);

    //Setting the second quadratic bezier
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

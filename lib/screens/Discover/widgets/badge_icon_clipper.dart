import 'package:flutter/material.dart';

class BadgeIconClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(255, 239, 215, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.5005000, size.height * 0.2140000);
    path0.lineTo(size.width * 0.3750000, size.height * 0.3557143);
    path0.lineTo(size.width * 0.3741667, size.height * 0.5714286);
    path0.lineTo(size.width * 0.4991667, size.height * 0.7142857);
    path0.lineTo(size.width * 0.6255000, size.height * 0.5714286);
    path0.lineTo(size.width * 0.6250000, size.height * 0.3571429);
    path0.lineTo(size.width * 0.5005000, size.height * 0.2140000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

import 'package:flutter/material.dart';

class IconAppBar extends StatelessWidget {
  final Color color;

  const IconAppBar({Key key, this.color = Colors.black}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: double.maxFinite,
      child: CustomPaint(
        painter: IconPainter(this.color),
      ),
    );
  }
}

class IconPainter extends CustomPainter {
  final Color color;

  IconPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = this.color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 3.5;
    final path = Path();
    path.moveTo(0, size.height * 0.15);
    path.lineTo(size.width * 0.35, size.height * 0.15);
    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.5);
    path.moveTo(size.width * 0.4, size.height * 0.85);
    path.lineTo(size.width, size.height * 0.85);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(IconPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(IconPainter oldDelegate) => false;
}

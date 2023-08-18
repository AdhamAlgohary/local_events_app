import 'package:flutter/material.dart';
import 'package:local_events_app/utils/functions/screen_size.dart';

class HomePageBackGround extends StatelessWidget {
  const HomePageBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    final width = getWidth(context: context);
    final height = getHeight(context: context);
    return ClipPath(
      clipper: _BottomShapeClipper(),
      child: Container(
        height: 0.5 * height,
        width: width,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class _BottomShapeClipper extends CustomClipper<Path> {
  _BottomShapeClipper();

  @override
  Path getClip(Size size) {
    final path = Path();
    final curveStartPoint = Offset(0, size.height * 0.75);
    final curveEndPoint = Offset(size.width, size.height * 0.75);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height * 1.25, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

import 'package:flutter/material.dart';
import 'package:local_events_app/utils/functions/print.dart';
import 'package:local_events_app/utils/functions/screen_size.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';

class EventDetailsBackGround extends StatelessWidget {
  const EventDetailsBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    final width = getWidth(context: context);
    final height = getHeight(context: context);
    final eventDetailsContent =
        context.watch<CategoriesViewModel>().eventsDetailsAfterSelectEvent;
    return ClipPath(
      clipper: _EventDetailsBackGround(),
      child: Image.asset(
        eventDetailsContent['imagePath'],
        fit: BoxFit.fill,
        color: const Color(0x99000000),
        colorBlendMode: BlendMode.darken,
        width: width,
        height: 0.6 * height,
      ),
    );
  }
}

class _EventDetailsBackGround extends CustomClipper<Path> {
  _EventDetailsBackGround();
  @override
  Path getClip(Size size) {
    var path = Path();
    try {
      const curveEndPoint = Offset(0, 0);

      path.moveTo(size.width, 0);
      path.lineTo(size.width, size.height);
      path.quadraticBezierTo(
          size.width * 0.08, size.height, curveEndPoint.dx, curveEndPoint.dy);
      path.lineTo(0, 0);
      path.close();
    } catch (e) {
      checkDebugMode(e);
    }
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

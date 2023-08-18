import 'package:flutter/material.dart';
import 'package:local_events_app/ui/screen/mobile_screen/pages/event_details_page/component/event_details_back_ground/event_details_back_ground.dart';
import 'package:local_events_app/ui/screen/mobile_screen/pages/event_details_page/component/event_details_content/event_details_content.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: <Widget>[EventDetailsBackGround(), EventDetailsContent()],
      ),
    );
  }
}

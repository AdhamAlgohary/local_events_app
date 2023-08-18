import 'package:flutter/material.dart';
import 'package:local_events_app/ui/screen/mobile_screen/pages/home_page/home_page.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:HomePage() ,
    );
  }
}
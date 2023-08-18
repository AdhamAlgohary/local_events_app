import 'package:flutter/material.dart';
import 'package:local_events_app/ui/screen/desktop_screen/desktop_screen.dart';
import 'package:local_events_app/ui/screen/mobile_screen/mobile_screen.dart';

class Responsive extends StatelessWidget{
  const Responsive({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_,boxConstraints)=> boxConstraints.maxWidth>360?const DesktopScreen():const MobileScreen());
  }

}
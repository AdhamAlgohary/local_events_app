import 'package:flutter/material.dart';
import 'package:local_events_app/utils/constant/text_style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:local_events_app/utils/functions/screen_size.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = getWidth(context: context);
    final primaryColor = Theme.of(context).primaryColor;
    Future.delayed(const Duration(milliseconds: 3000)).then((val) {
      Navigator.of(context).pushReplacementNamed('Responsive');
    });
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: SpinKitWaveSpinner(
          duration: const Duration(microseconds: 9000),
          color: Colors.white,
          trackColor: primaryColor,
          size: 0.3 * screenWidth,
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.04 * screenWidth, top: 0.02 * screenWidth),
            child: Text(
              'LOCAL EVENTS APP',
              style: fadedTextStyle.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

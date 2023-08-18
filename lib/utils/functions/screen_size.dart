import 'package:flutter/material.dart';

double getHeight({required BuildContext context}) =>
    MediaQuery.sizeOf(context).height;
double getWidth({required BuildContext context}) =>
    MediaQuery.sizeOf(context).width;
import 'package:flutter/material.dart';

final scrollbarTheme = ScrollbarThemeData(
    interactive: true,
    radius: const Radius.circular(10.0),
    thumbColor: MaterialStateProperty.all(Colors.black.withOpacity(0.4)),
    thickness: MaterialStateProperty.all(4.0),
    crossAxisMargin: 2,
    mainAxisMargin: 2,
    minThumbLength: 50);

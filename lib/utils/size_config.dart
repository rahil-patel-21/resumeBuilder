import 'package:flutter/material.dart';

class SizeConfig {
  static double? _screenWidth;
  static double? _screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;
  static double? textMultiplier;
  static double? imageSizeMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  static void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth! < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }
    _blockWidth = _screenWidth! / 100;
    _blockHeight = _screenHeight! / 100;
    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
  }

  static double get height => _blockHeight;
  static double get width => _blockWidth;
  static double get screenHeight => _screenHeight!;
  static double get screenWidth => _screenWidth!;
}

extension SizerExt on num {
  double get h => this * SizeConfig.screenHeight / 100;
  double get w => this * SizeConfig.screenWidth / 100;

  double get bh => this * SizeConfig.height;
  double get bw => this * SizeConfig.width;

  double get sp => this * (SizeConfig.screenWidth / 3) / 100;
}

class Sizer extends StatefulWidget {
  const Sizer({required this.child});
  final Widget child;
  @override
  State<Sizer> createState() => _SizerState();
}

class _SizerState extends State<Sizer> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => LayoutBuilder(
        builder: (context, constraints) {
          SizeConfig.init(constraints, orientation);
          return widget.child;
        },
      ),
    );
  }
}

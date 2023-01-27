import 'package:flutter/material.dart';

import '../../../core/gen/colors.gen.dart';

class CustomGradientOverlay extends StatelessWidget {
  const CustomGradientOverlay({
    Key? key,
    this.stops = const [0.0, 0.2, 0.8, 1.0],
    this.colors = const [
      Colors.blueGrey,
      ColorName.transparent,
      ColorName.transparent,
      Colors.blueGrey,
    ],
  }) : super(key: key);

  final List<double> stops;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: stops),
        ),
      ),
    );
  }
}

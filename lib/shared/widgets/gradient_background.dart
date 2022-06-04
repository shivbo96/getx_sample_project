import 'package:flutter/material.dart';
import 'package:getx_sample/shared/constants/colors.dart';


class GradientBackground extends StatelessWidget {
  final bool needWave;
  final Widget? child;
  final bool needTopSafeArea;
  final bool needTopRadius;

  GradientBackground({
    Key? key,
    this.needWave = true,
    this.needTopSafeArea = true,
    this.needTopRadius = false,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return needTopSafeArea
        ? Container(
            color: Theme.of(context).colorScheme.primaryVariant,
            child: SafeArea(
              child: _buildBackground(context),
            ),
          )
        : _buildBackground(context);
  }

  Widget _buildBackground(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: needTopRadius
                ? const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  )
                : null,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                hexToColor('#405FA3'),
                hexToColor('#1ED69D'),
              ],
            ),
          ),
          child: child,
        ),
      ],
    );
  }
}

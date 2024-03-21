import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            Color(0XFFFFBB3B),
            Color(0XFFFFA90A),
          ], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}

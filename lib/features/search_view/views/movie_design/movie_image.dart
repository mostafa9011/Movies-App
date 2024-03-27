import 'package:flutter/material.dart';
import '../../../../core/config/constants.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width * 0.35,
      height: Constants.mediaQuery.width * 0.25,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        'assets/images/Image1.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

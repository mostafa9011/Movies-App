import 'package:flutter/material.dart';
import '../../../../core/config/constants.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({
    super.key,
    required this.networkImage,
  });
  final String networkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width * 0.35,
      height: Constants.mediaQuery.width * 0.25,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.network(
        networkImage,
        fit: BoxFit.fill,
      ),
    );
  }
}

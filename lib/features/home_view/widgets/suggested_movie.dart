import 'package:flutter/material.dart';
import 'covered_movie.dart';
import 'poster_movie.dart';

class SuggestedMovie extends StatelessWidget {
  const SuggestedMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CoveredMovie(),
        PosterMovie(),
      ],
    );
  }
}

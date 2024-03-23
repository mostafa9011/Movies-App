import 'package:flutter/material.dart';
import 'covered_movie.dart';
import 'poster_movie.dart';

class SuggestedMovie extends StatelessWidget {
  const SuggestedMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        const CoveredMovie(),
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: const PosterMovie(),
        ),
      ],
    );
  }
}

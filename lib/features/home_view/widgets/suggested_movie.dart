import 'package:flutter/material.dart';
import '../../../core/config/constants.dart';
import 'covered_movie.dart';
import 'poster_movie.dart';

class SuggestedMovie extends StatelessWidget {
  const SuggestedMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CoveredMovie(
          textPadding: Constants.mediaQuery.width * 0.40,
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: const PosterMovie(),
        ),
      ],
    );
  }
}

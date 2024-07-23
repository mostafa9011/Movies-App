import 'package:flutter/material.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import '../../../../core/config/constants.dart';
import 'covered_movie.dart';
import 'poster_movie.dart';

class SuggestedMovie extends StatelessWidget {
  const SuggestedMovie({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CoveredMovie(
          textPadding: Constants.mediaQuery.width * 0.40,
          movie: movie,
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: PosterMovie(
            movie: movie,
            id: movie.id!,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/core/config/models/movie_model.dart';

import '../../../core/config/constants.dart';
import 'poster_movie.dart';

class RecomendedPoster extends StatelessWidget {
  const RecomendedPoster({
    super.key,
    required this.movie,
  });
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Expanded(
            child: PosterMovie(movieImage: movie.posterImage,),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.star,
                size: 13,
                color: Constants.goldenColor,
              ),
              Text(
                '${movie.voteAverage}',
                style: Constants.theme.textTheme.bodySmall,
              ),
            ],
          ),
          Text(
            movie.title,
            style: Constants.theme.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            movie.releaseDate,
            style: Constants.theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

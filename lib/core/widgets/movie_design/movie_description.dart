import 'package:flutter/material.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import '../../config/constants.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    super.key,
    required this.movie,
  });
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, bottom: 5),
          width: Constants.mediaQuery.width * 0.5,
          child: Text(
            movie.title,
            style: Constants.theme.textTheme.bodyMedium!.copyWith(
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, bottom: 5),
          child: Text(
            movie.releaseDate,
            style: Constants.theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, bottom: 5),
          width: Constants.mediaQuery.width * 0.5,
          child: Text(
            movie.overview,
            style: Constants.theme.textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

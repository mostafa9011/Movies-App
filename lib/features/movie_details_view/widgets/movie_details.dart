import 'package:flutter/material.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import '../../../core/config/constants.dart';
import '../../home_view/widgets/poster_movie.dart';
import 'custom_button.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          PosterMovie(
            movieImage: movie.posterImage,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Constants.mediaQuery.width * 0.6,
                  height: 38,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movie.genresList!.length,
                    itemBuilder: (context, index) {
                      return CustomButton(
                        genreName: movie.genresList![index],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: Constants.mediaQuery.width * 0.6,
                  child: Text(
                    movie.overview,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: Constants.theme.textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Constants.goldenColor,
                      size: 30,
                    ),
                    Text(
                      '${movie.voteAverage}',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../core/config/models/movie_model.dart';
import 'recomended_poster.dart';

class RecomenedPosterListView extends StatelessWidget {
  const RecomenedPosterListView({
    super.key,
    required this.moviesList,
  });
  final List<MovieModel> moviesList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: moviesList.length,
        itemBuilder: (context, index) {
          return RecomendedPoster(
            movie: moviesList[index],
          );
        },
      ),
    );
  }
}

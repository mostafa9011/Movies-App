import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/features/movie_details/manager/details_movies_cubit/details_movie_cubit.dart';
import 'package:movies_app/features/movie_details/manager/similar_movies_cubit/similar_movies_cubit.dart';
import 'custom_image.dart';
import 'is_favorite_widget.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({
    super.key,
    required this.movie,
    this.id,
  });
  final MovieModel movie;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 166,
      width: Constants.mediaQuery.width * 0.30,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              if (id != null) {
                BlocProvider.of<DetailsMovieCubit>(context).getDetailsMovie(
                  id: movie.id!,
                );
                BlocProvider.of<SimilarMoviesCubit>(context).getSimilarMovies(
                  id: movie.id!,
                );
                Navigator.pushNamed(
                  context,
                  ViewsRouteName.detailsView,
                  arguments: movie,
                );
              }
            },
            child: Center(
              child: CustomImage(movie: movie),
            ),
          ),
          Positioned(
            left: -13,
            top: -10,
            child: IsFavoriteWidget(movie: movie),
          ),
        ],
      ),
    );
  }
}

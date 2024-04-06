import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import '../../../../core/config/views_route_name.dart';
import '../../../../core/cubits/details_movies_cubit/details_movie_cubit.dart';
import '../../../../core/cubits/similar_movies_cubit/similar_movies_cubit.dart';
import 'movie_description.dart';
import 'movie_image.dart';

class MovieDesign extends StatelessWidget {
  const MovieDesign({
    super.key,
    required this.movie,
  });
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ViewsRouteName.detailsView,
        );
        BlocProvider.of<DetailsMovieCubit>(context).getDetailsMovie(
          id: movie.id!,
        );
        BlocProvider.of<SimilarMoviesCubit>(context).getSimilarMovies(
          id: movie.id!,
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 16,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                bottom: 6,
              ),
              child: Row(
                children: [
                  MovieImage(
                    networkImage: movie.posterImage!,
                  ),
                  MovieDescription(
                    movie: movie,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0XFF707070),
              endIndent: 10,
              indent: 10,
            )
          ],
        ),
      ),
    );
  }
}

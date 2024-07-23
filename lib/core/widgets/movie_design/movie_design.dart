import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import '../../config/views_route_name.dart';
import '../../../features/movie_details/manager/details_movies_cubit/details_movie_cubit.dart';
import '../../../features/movie_details/manager/similar_movies_cubit/similar_movies_cubit.dart';
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

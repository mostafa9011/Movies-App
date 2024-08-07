import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/features/home/manager/new_releases_movies_cubit/new_releases_movies_cubit.dart';
import 'package:movies_app/features/home/manager/new_releases_movies_cubit/new_releases_movies_state.dart';
import 'package:movies_app/features/home/views/widgets/poster_movie.dart';

class NewReleasesMoviesBuilder extends StatelessWidget {
  const NewReleasesMoviesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewReleasesMoviesCubit, NewReleasesMoviesStates>(
      builder: (context, state) {
        if (state is MoviesInitial) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Constants.goldenColor,
              strokeWidth: 1,
            ),
          );
        } else if (state is SuccessMoviesState) {
          return NewReleasesLisView(
            moviesList: state.moviesList,
          );
        } else {
          return const Text('there was an error');
        }
      },
    );
  }
}

class NewReleasesLisView extends StatelessWidget {
  const NewReleasesLisView({
    super.key,
    required this.moviesList,
  });
  final List<MovieModel> moviesList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: moviesList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            child: PosterMovie(
              movie: moviesList[index],
              id: moviesList[index].id!,
            ),
          );
        },
      ),
    );
  }
}

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/cubits/movies_cubit/movies_cubit.dart';
import 'package:movies_app/core/cubits/movies_cubit/movies_state.dart';
import 'package:movies_app/features/home_view/widgets/new_releases_movie.dart';

class NewReleasesMovies extends StatelessWidget {
  const NewReleasesMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoviesCubit, MoviesStates>(
      listener: (context, state) {
        log(state.toString());
      },
      builder: (context, state) {
        if (state is MoviesInitial) {
          return const Center(
              child: CircularProgressIndicator(
                  backgroundColor: Constants.goldenColor));
        } else if (state is SuccessMoviesState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: state.moviesList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 10),
                child: NewReleasesMovie(
                  movie: state.moviesList[index],
                ),
              );
            },
          );
        } else {
          return const Text('there was an error');
        }
      },
    );
  }
}

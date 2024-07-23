import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/movie_details/manager/similar_movies_cubit/similar_movies_cubit.dart';
import 'package:movies_app/features/movie_details/manager/similar_movies_cubit/similar_movies_state.dart';
import '../../../../core/config/constants.dart';
import 'recomened_poster_list_view.dart';

class SimilarMoviesBuilder extends StatelessWidget {
  const SimilarMoviesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarMoviesCubit, SimilarMoviesStates>(
      builder: (context, state) {
        if (state is SimilarInitial) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Constants.goldenColor,
              strokeWidth: 1,
            ),
          );
        } else if (state is SimilarSuccessState) {
          return RecomenedPosterListView(
            moviesList: state.moviesList,
          );
        } else {
          return const Text('there was an error');
        }
      },
    );
  }
}

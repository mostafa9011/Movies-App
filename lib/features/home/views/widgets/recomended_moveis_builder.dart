import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/config/constants.dart';
import '../../manager/recommended_movies_cubit/recommended_movies_cubit.dart';
import '../../manager/recommended_movies_cubit/recommended_movies_state.dart';
import 'recomened_poster_list_view.dart';

class RecomendedMoviesBuilder extends StatelessWidget {
  const RecomendedMoviesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecomendedMoviesCubit, RecomendedMoviesStates>(
      builder: (context, state) {
        if (state is Initial) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Constants.goldenColor,
              strokeWidth: 1,
            ),
          );
        } else if (state is SuccessState) {
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

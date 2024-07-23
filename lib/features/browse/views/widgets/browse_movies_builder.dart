import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/browse/manager/browse_cubit.dart';
import 'package:movies_app/features/browse/manager/browse_movies_state.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/widgets/movie_design/movie_design.dart';

class BrowseMoviesBuilder extends StatelessWidget {
  const BrowseMoviesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrowseMoviesCubit, BrowseMoviesStates>(
      builder: (context, state) {
        if (state is BrowseLoadingState) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Constants.goldenColor,
              strokeWidth: 1,
            ),
          );
        } else if (state is BrowseSuccessState) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.moviesList.length,
              itemBuilder: (context, index) {
                return MovieDesign(
                  movie: state.moviesList[index],
                );
              },
            ),
          );
        } else {
          return const Text('there was an error');
        }
      },
    );
  }
}

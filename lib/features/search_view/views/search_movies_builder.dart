import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/config/constants.dart';
import '../../../core/cubits/search_movies_cubit/search_cubit.dart';
import '../../../core/cubits/search_movies_cubit/search_movies_state.dart';
import '../widgets/local_movies.dart';
import 'movie_design/movie_design.dart';

class SearchMoviesBuilder extends StatelessWidget {
  const SearchMoviesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMoviesCubit, SearchMoviesStates>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return const LocalMovies();
        } else if (state is SearchLoadingState) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Constants.goldenColor,
              strokeWidth: 1,
            ),
          );
        } else if (state is SearchSuccessState) {
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

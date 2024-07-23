import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/config/constants.dart';
import '../../manager/popular_movies_cubit/popular_movies_cubit.dart';
import '../../manager/popular_movies_cubit/popular_movies_state.dart';
import 'carousel_slider_list.dart';

class PopularMoviesBuilder extends StatelessWidget {
  const PopularMoviesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesCubit, PopularMoviesStates>(
      builder: (context, state) {
        if (state is InitialPopular) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Constants.goldenColor,
              strokeWidth: 1,
            ),
          );
        } else if (state is SuccessPopularState) {
          return CarouselSliderList(
            moviesList: state.moviesList,
          );
        } else {
          return const Text('there was an error');
        }
      },
    );
  }
}

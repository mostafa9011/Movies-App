import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/cubits/popular_movies_cubit/popular_movies_cubit.dart';
import 'package:movies_app/core/cubits/popular_movies_cubit/popular_movies_state.dart';
import 'package:movies_app/features/home_view/widgets/carousel_slider_list.dart';
import 'package:movies_app/features/home_view/widgets/new_releases.dart';
import 'package:movies_app/features/home_view/widgets/recomended_movies_list.dart';

import '../../../core/config/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            child: BlocBuilder<PopularMoviesCubit, PopularMoviesStates>(
              builder: (context, state) {
                if (state is InitialPopular) {
                  return const Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Constants.goldenColor,
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
            ),
          ),
          const Spacer(flex: 1),
          const NewReleases(),
          const Spacer(flex: 1),
          const RecomendedMoviesList(title: 'Recomended'),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

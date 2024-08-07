import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/movie_details/manager/details_movies_cubit/details_movie_cubit.dart';
import 'package:movies_app/features/movie_details/manager/details_movies_cubit/details_movie_state.dart';
import 'package:movies_app/features/home/views/widgets/covered_movie.dart';
import 'package:movies_app/features/home/views/widgets/recomended_movies_list.dart';
import 'package:movies_app/features/movie_details/views/widgets/custom_app_bar.dart';
import 'package:movies_app/features/movie_details/views/widgets/movie_details.dart';
import '../../../core/config/constants.dart';
import '../../../core/config/models/movie_model.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    MovieModel movie = ModalRoute.of(context)!.settings.arguments as MovieModel;
    var vm = BlocProvider.of<DetailsMovieCubit>(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<DetailsMovieCubit, DetailsMovieStates>(
          builder: (context, state) {
            if (state is InitialMovieState) {
              return const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Constants.goldenColor,
                  strokeWidth: 1,
                ),
              );
            } else if (state is SuccessMovieState) {
              vm.movieDetails.cloudId = movie.cloudId;
              log('${vm.movieDetails.cloudId} success state');
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    title: vm.movieDetails.title,
                  ),
                  const Spacer(flex: 1),
                  CoveredMovie(
                    textPadding: 16,
                    movie: vm.movieDetails,
                  ),
                  MovieDetails(
                    movie: vm.movieDetails,
                  ),
                  const Spacer(flex: 1),
                  const RecomendedMoviesList(
                    title: 'More Like This',
                    isSimilar: true,
                  ),
                  const Spacer(flex: 1),
                ],
              );
            } else {
              return const Text('there was an error');
            }
          },
        ),
      ),
    );
  }
}

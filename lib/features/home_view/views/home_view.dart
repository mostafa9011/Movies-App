import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home_view/widgets/new_releases.dart';
import 'package:movies_app/features/home_view/widgets/popular_movies_builder.dart';
import 'package:movies_app/features/home_view/widgets/recomended_movies_list.dart';
import '../../../core/config/constants.dart';
import '../../../core/config/models/movie_model.dart';
import '../../../core/config/services/cloud_firestore.dart';
import '../../../core/cubits/favorite_movies_cubit/favorite_movies_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = BlocProvider.of<FavoriteMoviesCubit>(context);

    return StreamBuilder<QuerySnapshot<MovieModel>>(
      stream: FireStoreService().getStreamFavMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Constants.goldenColor,
              strokeWidth: 1,
            ),
          );
        } else {
          List<MovieModel> favoriteMoviesList =
              snapshot.data?.docs.map((e) => e.data()).toList() ?? [];

          vm.getFavoriteMoviesList(favoriteMoviesList);

          return const Column(
            children: [
              PopularMoviesBuilder(),
              Spacer(flex: 1),
              NewReleases(),
              Spacer(flex: 1),
              RecomendedMoviesList(
                title: 'Recomended',
                isSimilar: false,
              ),
              Spacer(flex: 1),
            ],
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/browse/manager/browse_cubit.dart';
import 'package:movies_app/features/watched_list/manager/favorite_movies_cubit.dart';
import '../../features/movie_details/manager/details_movies_cubit/details_movie_cubit.dart';
import '../../features/layout/manager/home_layout_cubit.dart';
import '../../features/home/manager/new_releases_movies_cubit/new_releases_movies_cubit.dart';
import '../../features/home/manager/popular_movies_cubit/popular_movies_cubit.dart';
import '../../features/home/manager/recommended_movies_cubit/recommended_movies_cubit.dart';
import '../../features/search/manager/search_cubit.dart';
import '../../features/movie_details/manager/similar_movies_cubit/similar_movies_cubit.dart';

class MultiBloc extends StatelessWidget {
  const MultiBloc({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeLayoutCubit(),
        ),
        BlocProvider(
          create: (context) => NewReleasesMoviesCubit(),
        ),
        BlocProvider(
          create: (context) => RecomendedMoviesCubit(),
        ),
        BlocProvider(
          create: (context) => PopularMoviesCubit(),
        ),
        BlocProvider(
          create: (context) => DetailsMovieCubit(),
        ),
        BlocProvider(
          create: (context) => SimilarMoviesCubit(),
        ),
        BlocProvider(
          create: (context) => SearchMoviesCubit(),
        ),
        BlocProvider(
          create: (context) => BrowseMoviesCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteMoviesCubit(),
        ),
      ],
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/cubits/browse_movies_cubit/browse_cubit.dart';

import '../cubits/details_movies_cubit/details_movie_cubit.dart';
import '../cubits/home_layout_cubit/home_layout_cubit.dart';
import '../cubits/new_releases_movies_cubit/new_releases_movies_cubit.dart';
import '../cubits/popular_movies_cubit/popular_movies_cubit.dart';
import '../cubits/recommended_movies_cubit/recommended_movies_cubit.dart';
import '../cubits/search_movies_cubit/search_cubit.dart';
import '../cubits/similar_movies_cubit/similar_movies_cubit.dart';

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
      ],
      child: child,
    );
  }
}

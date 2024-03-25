import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/app_theme_manager.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/cubits/popular_movies_cubit/popular_movies_cubit.dart';
import 'package:movies_app/core/cubits/recommended_movies_cubit/recommended_movies_cubit.dart';

import '../../../core/cubits/new_releases_movies_cubit/new_releases_movies_cubit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        BlocProvider.of<NewReleasesMoviesCubit>(context).getNewReleasesMovies(
          url: Constants.newReleasesUrl,
        );
        BlocProvider.of<RecomendedMoviesCubit>(context).getRecomendedMovies(
          url: Constants.recommendedUrl,
        );
        BlocProvider.of<PopularMoviesCubit>(context).getPopularMovies(
          url: Constants.recommendedUrl,
        );
        
        Navigator.pushReplacementNamed(
          context,
          ViewsRouteName.homeLayoutView,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeManager.lightTheme.scaffoldBackgroundColor,
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/movies_splash.png',
          ),
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/main.dart';

import '../cubits/home_layout_cubit/home_layout_cubit.dart';

class Constants {
  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;

  static var theme = Theme.of(navigatorKey.currentState!.context);

  static const Color goldenColor = Color(0XFFFFBB3B);

  static var homeLayoutCubit =
      BlocProvider.of<HomeLayoutCubit>(navigatorKey.currentState!.context);

  static String apiKey = 'api_key=2764fc364c525a541715b2ba02b88aa5';
  static String newReleasesUrl =
      'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc&with_release_type=2|3&release_date.gte={min_date}&release_date.lte={max_date}';

  static String recommendedUrl =
      'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=vote_average.desc&without_genres=99,10755&vote_count.gte=200';
  static String popularUrl =
      'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc';
  static String errorNetworkImage =
      'https://static.vecteezy.com/system/resources/previews/016/089/981/original/website-error-black-glyph-icon-webpage-broken-network-connection-failed-server-issue-page-loading-problem-silhouette-symbol-on-white-space-solid-pictogram-isolated-illustration-vector.jpg';
}

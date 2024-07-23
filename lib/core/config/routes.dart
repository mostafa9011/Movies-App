import 'package:flutter/material.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/features/browse/views/browsed_movies_view.dart';
import 'package:movies_app/features/movie_details/views/movie_details_view.dart';
import 'package:movies_app/features/layout/views/home_layout_view.dart';
import 'package:movies_app/features/splash/views/splash_view.dart';

class Routes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case ViewsRouteName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case ViewsRouteName.homeLayoutView:
        return MaterialPageRoute(
          builder: (context) => const HomeLayoutView(),
          settings: settings,
        );
      case ViewsRouteName.detailsView:
        return MaterialPageRoute(
          builder: (context) => const MovieDetailsView(),
          settings: settings,
        );
      case ViewsRouteName.browseMoviesView:
        return MaterialPageRoute(
          builder: (context) => const BrowsedMoviesView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}

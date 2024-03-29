import 'package:flutter/material.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/features/browse_view/widgets/browse_movies_view.dart';
import 'package:movies_app/features/movie_details_view/views/movie_details_view.dart';
import 'package:movies_app/features/home_layout_view/views/home_layout_view.dart';
import 'package:movies_app/features/splash_view/views/splash_view.dart';

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
          builder: (context) => const BrowseMoviesView(),
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

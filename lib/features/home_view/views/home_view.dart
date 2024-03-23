import 'package:flutter/material.dart';
import 'package:movies_app/features/home_view/widgets/new_releases.dart';
import 'package:movies_app/features/home_view/widgets/recomended_movies_list.dart';
import '../widgets/suggested_movie.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SuggestedMovie(),
          Spacer(flex: 1),
          NewReleases(),
          Spacer(flex: 1),
          RecomendedMoviesList(),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}

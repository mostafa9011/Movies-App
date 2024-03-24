import 'package:flutter/material.dart';
import 'package:movies_app/features/home_view/widgets/covered_movie.dart';
import 'package:movies_app/features/home_view/widgets/recomended_movies_list.dart';
import 'package:movies_app/features/movie_details_view/widgets/custom_app_bar.dart';
import 'package:movies_app/features/movie_details_view/widgets/movie_details.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const Spacer(flex: 1),
            const CoveredMovie(
              textPadding: 16,
            ),
            const MovieDetails(),
            const Spacer(flex: 1),
            const RecomendedMoviesList(title: 'More Like This'),
            const Spacer(flex: 1),
            Container(),
          ],
        ),
      ),
    );
  }
}

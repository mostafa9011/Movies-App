import 'package:flutter/material.dart';
import 'package:movies_app/features/home_view/widgets/poster_movie.dart';

class NewReleasesMovies extends StatelessWidget {
  const NewReleasesMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 10),
          child: const PosterMovie(),
        );
      },
    );
  }
}

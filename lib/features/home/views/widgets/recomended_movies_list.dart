import 'package:flutter/material.dart';
import 'package:movies_app/features/home/views/widgets/recomended_moveis_builder.dart';
import 'package:movies_app/features/home/views/widgets/similar_movies_builder.dart';
import '../../../../core/config/constants.dart';

class RecomendedMoviesList extends StatelessWidget {
  const RecomendedMoviesList({
    super.key,
    required this.title,
    required this.isSimilar,
  });
  final String title;
  final bool isSimilar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width,
      height: Constants.mediaQuery.height * 0.28,
      padding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
      decoration: const BoxDecoration(
        color: Color(0XFF282A28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Constants.theme.textTheme.titleMedium,
          ),
          isSimilar
              ? const SimilarMoviesBuilder()
              : const RecomendedMoviesBuilder(),
        ],
      ),
    );
  }
}

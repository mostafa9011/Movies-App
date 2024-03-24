import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/config/constants.dart';
import 'recomened_poster_list_view.dart';

class RecomendedMoviesList extends StatelessWidget {
  const RecomendedMoviesList({super.key, required this.title});
  final String title;

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
          const RecomenedPosterListView(),
        ],
      ),
    );
  }
}

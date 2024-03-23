import 'package:flutter/material.dart';
import 'recomended_poster.dart';

class RecomenedPosterListView extends StatelessWidget {
  const RecomenedPosterListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const RecomendedPoster();
        },
      ),
    );
  }
}

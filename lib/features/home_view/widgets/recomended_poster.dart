import 'package:flutter/material.dart';

import '../../../core/config/constants.dart';
import 'poster_movie.dart';

class RecomendedPoster extends StatelessWidget {
  const RecomendedPoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: PosterMovie()),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.star,
                size: 13,
                color: Constants.goldenColor,
              ),
              Text(
                '1.7',
                style: Constants.theme.textTheme.bodySmall,
              ),
            ],
          ),
          Text(
            'Deadpool 2',
            style: Constants.theme.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '2018  R  1h 59m',
            style: Constants.theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

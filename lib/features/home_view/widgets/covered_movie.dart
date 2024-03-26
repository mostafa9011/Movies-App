import 'package:flutter/material.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import '../../../core/config/constants.dart';

class CoveredMovie extends StatelessWidget {
  const CoveredMovie({super.key, required this.textPadding, this.movie});
  final double textPadding;
  final MovieModel? movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.mediaQuery.width,
      height: Constants.mediaQuery.height * 0.30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Constants.mediaQuery.width,
            height: Constants.mediaQuery.height * 0.22,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: movie == null
                    ? const NetworkImage(
                        'https://images-cdn.ubuy.co.in/6352289f38bb253c44612d53-interstellar-movie-poster-24-x-36-inches.jpg',
                      )
                    : NetworkImage(
                        movie!.backdropImage,
                      ),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: const Icon(
              Icons.play_circle,
              color: Colors.white,
              size: 55,
            ),
          ),
          Row(
            children: [
              SizedBox(width: textPadding),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  movie == null
                      ? 'Dora and the lost city of gold'
                      : movie!.title,
                  style: Constants.theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: textPadding),
              Text(
                movie == null ? '9 / 11 / 2003' : movie!.releaseDate,
                style: Constants.theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

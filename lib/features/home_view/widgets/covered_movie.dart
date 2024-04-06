import 'package:cached_network_image/cached_network_image.dart';
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
          CachedNetworkImage(
            imageUrl: movie!.backdropImage ?? '',
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Container(
              width: Constants.mediaQuery.width,
              height: Constants.mediaQuery.height * 0.22,
              color: Colors.grey,
              child: const Icon(
                Icons.error,
              ),
            ),
            imageBuilder: (context, imageProvider) => Container(
              width: Constants.mediaQuery.width,
              height: Constants.mediaQuery.height * 0.22,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    movie!.backdropImage ?? '',
                    scale: 1.0,
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

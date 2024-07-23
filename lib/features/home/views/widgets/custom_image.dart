import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/models/movie_model.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: movie.posterImage!,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
      ),
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: NetworkImage(movie.posterImage ?? ''),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

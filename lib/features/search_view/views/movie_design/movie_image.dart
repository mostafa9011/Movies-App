import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/config/constants.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({
    super.key,
    this.networkImage,
  });
  final String? networkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width * 0.35,
      height: Constants.mediaQuery.width * 0.25,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: CachedNetworkImage(
        imageUrl: networkImage ?? '',
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
        ),
        imageBuilder: (context, imageProvider) => Container(
          width: Constants.mediaQuery.width * 0.35,
          height: Constants.mediaQuery.width * 0.25,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(networkImage ?? ''),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

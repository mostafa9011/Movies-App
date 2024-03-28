import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/cubits/details_movies_cubit/details_movie_cubit.dart';
import 'package:movies_app/core/cubits/similar_movies_cubit/similar_movies_cubit.dart';
import 'package:movies_app/core/widgets/unfavorite_bookmark.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({super.key, this.movieImage, this.moviesId});
  final String? movieImage;
  final int? moviesId;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 166,
      width: Constants.mediaQuery.width * 0.30,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () {
              if (moviesId != null) {
                Navigator.pushNamed(
                  context,
                  ViewsRouteName.detailsView,
                  arguments: moviesId,
                );
                BlocProvider.of<DetailsMovieCubit>(context).getDetailsMovie(
                  id: moviesId!,
                );
                BlocProvider.of<SimilarMoviesCubit>(context).getSimilarMovies(
                  id: moviesId!,
                );
              }
            },
            child: Center(
              child: CachedNetworkImage(
                imageUrl: movieImage ?? '',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: NetworkImage(movieImage ?? ''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 128,
            left: -4,
            child: UnSelectedBookmark(),
          ),
        ],
      ),
    );
  }
}

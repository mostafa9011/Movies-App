import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/cubits/details_movies_cubit/details_movie_cubit.dart';
import 'package:movies_app/core/widgets/unfavorite_bookmark.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({super.key, this.movieImage, this.moviesId});
  final String? movieImage;
  final int? moviesId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        }
      },
      child: Container(
        padding: EdgeInsets.zero,
        alignment: Alignment.topLeft,
        height: 166,
        width: Constants.mediaQuery.width * 0.30,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: movieImage == null
                ? const NetworkImage(
                    'https://images-cdn.ubuy.co.in/6352289f38bb253c44612d53-interstellar-movie-poster-24-x-36-inches.jpg',
                  )
                : NetworkImage(movieImage!),
            fit: BoxFit.fill,
          ),
        ),
        child: const UnSelectedBookmark(),
      ),
    );
  }
}

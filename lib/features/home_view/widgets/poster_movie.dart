import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/widgets/unfavorite_bookmark.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({super.key, this.movie});
  final MovieModel? movie;

  @override
  Widget build(BuildContext context) {
    // final MovieModel defaultMovie = MovieModel(
    //     id: 1,
    //     backdropImage: Constants.posterUrl,
    //     title: 'test',
    //     overview: 'overview',
    //     posterImage: Constants.posterUrl,
    //     releaseDate: 'releaseDate',
    //     voteAverage: 0.0);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ViewsRouteName.detailsView),
      child: Container(
        padding: EdgeInsets.zero,
        alignment: Alignment.topLeft,
        height: 166,
        width: Constants.mediaQuery.width * 0.30,
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            // image: movie == null
            //     ? NetworkImage(movie!.posterImage)
            //     : NetworkImage(Constants.posterUrl),
            // image: NetworkImage(Constants.posterUrl),
            image: AssetImage('assets/images/Image1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: const UnSelectedBookmark(),
      ),
    );
  }
}

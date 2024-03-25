import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/widgets/unfavorite_bookmark.dart';

class NewReleasesMovie extends StatelessWidget {
  const NewReleasesMovie({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ViewsRouteName.detailsView),
      child: Container(
        padding: EdgeInsets.zero,
        alignment: Alignment.topLeft,
        height: 166,
        width: Constants.mediaQuery.width * 0.30,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            //image: AssetImage('assets/images/Image1.png'),
            image: NetworkImage(movie.posterImage),
            fit: BoxFit.fill,
          ),
        ),
        child: const UnSelectedBookmark(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/widgets/unfavorite_bookmark.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({super.key, this.movieImage});
  final String? movieImage;

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

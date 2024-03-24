import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import 'package:movies_app/core/widgets/unfavorite_bookmark.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({super.key});

  @override
  Widget build(BuildContext context) {
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
            image: AssetImage('assets/images/Image1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: const UnSelectedBookmark(),
      ),
    );
  }
}

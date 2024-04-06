import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class FavoriteBookmark extends StatelessWidget {
  const FavoriteBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.bookmark,
          size: 40,
          color: Constants.goldenColor,
        ),
        Icon(
          Icons.check,
          color: Colors.white,
          size: 22,
        )
      ],
    );
  }
}

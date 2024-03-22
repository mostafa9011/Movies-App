import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/widgets/unselected_bookmark.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(left: 16),
      height: 166,
      width: Constants.mediaQuery.width * 0.30,
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            image: AssetImage('assets/images/Image1.png'), fit: BoxFit.fill),
      ),
      child: const UnSelectedBookmark(),
    );
  }
}

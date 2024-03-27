import 'package:flutter/material.dart';

import 'movie_description.dart';
import 'movie_image.dart';

class MovieDesign extends StatelessWidget {
  const MovieDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, bottom: 6),
            child: const Row(
              children: [
                MovieImage(),
                MovieDescription(),
              ],
            ),
          ),
          const Divider(
            color: Color(0XFF707070),
            endIndent: 10,
            indent: 10,
          )
        ],
      ),
    );
  }
}

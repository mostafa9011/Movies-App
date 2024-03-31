import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/cloud_firestore.dart';

class UnSelectedBookmark extends StatelessWidget {
  const UnSelectedBookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        MovieModel movie = MovieModel(
          id: 1,
          backdropImage: 'test',
          title: 'title',
          overview: 'overview',
          posterImage: 'posterImage',
          releaseDate: 'releaseDate',
          voteAverage: 7.2,
        );
        await FireStoreService().addMovie(movie);
        log('added');
      },
      icon: const Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.bookmark,
            size: 30,
            color: Color(0xff514f4f),
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          )
        ],
      ),
    );
  }
}

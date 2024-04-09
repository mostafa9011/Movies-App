import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/cloud_firestore.dart';
import '../../widgets/favorite_bookmark.dart';
import '../../widgets/unfavorite_bookmark.dart';
part 'favorite_movies_state.dart';

class FavoriteMoviesCubit extends Cubit<FavoriteMoviesState> {
  FavoriteMoviesCubit() : super(FavoriteMoviesInitial());
  List<MovieModel> favoriteMoviesList = [];
  List<int> favoriteMoviesIdsList = [];

  getFavoriteMoviesList(List<MovieModel> moviesList) {
    favoriteMoviesList = moviesList;
    favoriteMoviesIdsList = moviesList.map((e) => e.id!).toList();
    return favoriteMoviesList;
  }

  Stream<QuerySnapshot<MovieModel>> getStreamFavoriteMovies() {
    return FireStoreService().getStreamFavMovies();
  }

  Widget isFavoriteWidget(MovieModel movie) {
    for (int i = 0; i < favoriteMoviesList.length; i++) {
      if (favoriteMoviesList[i].id == movie.id) {
        movie.cloudId = favoriteMoviesList[i].cloudId;
        break;
      }
    }
    return favoriteMoviesIdsList.contains(movie.id)
        ? const FavoriteBookmark()
        : const UnFavoriteBookmark();
  }

  Future<void> onTap(MovieModel movie) async {
    bool isFavorite = favoriteMoviesIdsList.contains(movie.id);
    // emit(FavoriteMoviesInitial());
    isFavorite == true
        ? {
            await FireStoreService().deleteMovieFromFavorite(movie.cloudId!),
            log('delete ${movie.title} from favorite'),
          }
        : {
            await FireStoreService().addMovieToFavorite(movie),
            log('add ${movie.title} to favorite'),
          };
    isFavorite = !isFavorite;
    emit(FavoriteMoviesSuccess());
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/cloud_firestore.dart';
part 'favorite_movies_state.dart';

class FavoriteMoviesCubit extends Cubit<FavoriteMoviesState> {
  FavoriteMoviesCubit() : super(FavoriteMoviesInitial());
  List<MovieModel> favoriteMoviesList = [];
  List<int> favoriteMoviesIdsList = [];
  List<String> favoriteMoviesCloudIdsList = [];
  Stream<QuerySnapshot<MovieModel>> streamFavoriteMovies =
      FireStoreService().getStreamFavMovies();

  getFavoriteMoviesList(List<MovieModel> moviesList) {
    favoriteMoviesList = moviesList;
    favoriteMoviesIdsList = moviesList.map((e) => e.id!).toList();
    favoriteMoviesCloudIdsList = moviesList.map((e) => e.cloudId!).toList();
    return favoriteMoviesList;
  }

  watchedListMovies() {
    favoriteMoviesList;
    emit(FavoriteMoviesSuccess());
  }

  getFavoriteMovies() {
    // emit(FavoriteMoviesLoading());
    streamFavoriteMovies;
    emit(FavoriteMoviesSuccess());
  }

  getStreamFavMovies() {
    emit(FavoriteMoviesLoading());
    FireStoreService().getStreamFavMovies();
    emit(FavoriteMoviesSuccess());
  }

  addMovieToFavorite({required MovieModel movie}) async {
    emit(FavoriteMoviesLoading());
    await FireStoreService().addMovieToFavorite(movie);
    emit(FavoriteMoviesSuccess());
  }

  Future<void> deletMovieFromFav({required String cloudId}) async {
    emit(FavoriteMoviesLoading());
    await FireStoreService().deleteMovieFromFavorite(cloudId);
    emit(FavoriteMoviesSuccess());
  }
}

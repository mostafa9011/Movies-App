import '../../config/models/movie_model.dart';

sealed class MoviesStates {}

final class MoviesInitial extends MoviesStates {}

final class SuccessMoviesState extends MoviesStates {
  final List<MovieModel> moviesList;

  SuccessMoviesState({required this.moviesList});
}

final class FailureMoviesState extends MoviesStates {}

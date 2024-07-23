import '../../../../core/config/models/movie_model.dart';

sealed class NewReleasesMoviesStates {}

final class MoviesInitial extends NewReleasesMoviesStates {}

final class SuccessMoviesState extends NewReleasesMoviesStates {
  final List<MovieModel> moviesList;

  SuccessMoviesState({required this.moviesList});
}

final class FailureMoviesState extends NewReleasesMoviesStates {
  final String error;

  FailureMoviesState({required this.error});
}

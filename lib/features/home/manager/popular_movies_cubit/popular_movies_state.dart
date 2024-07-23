import '../../../../core/config/models/movie_model.dart';

sealed class PopularMoviesStates {}

final class InitialPopular extends PopularMoviesStates {}

final class SuccessPopularState extends PopularMoviesStates {
  final List<MovieModel> moviesList;

  SuccessPopularState({required this.moviesList});
}

final class FailurePopularState extends PopularMoviesStates {
  final String error;

  FailurePopularState({required this.error});
}

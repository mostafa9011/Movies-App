import '../../config/models/movie_model.dart';

sealed class RecomendedMoviesStates {}

final class Initial extends RecomendedMoviesStates {}

final class SuccessState extends RecomendedMoviesStates {
  final List<MovieModel> moviesList;

  SuccessState({required this.moviesList});
}

final class FailureState extends RecomendedMoviesStates {
  final String error;

  FailureState({required this.error});
}

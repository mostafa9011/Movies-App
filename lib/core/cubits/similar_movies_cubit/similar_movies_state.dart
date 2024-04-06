import '../../config/models/movie_model.dart';

sealed class SimilarMoviesStates {}

final class SimilarInitial extends SimilarMoviesStates {}

final class SimilarSuccessState extends SimilarMoviesStates {
  final List<MovieModel> moviesList;

  SimilarSuccessState({required this.moviesList});
}

final class SimilarFailureState extends SimilarMoviesStates {
  final String error;

  SimilarFailureState({required this.error});
}

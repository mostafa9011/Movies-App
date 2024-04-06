import '../../config/models/movie_model.dart';

sealed class DetailsMovieStates {}

final class InitialMovieState extends DetailsMovieStates {}

final class SuccessMovieState extends DetailsMovieStates {
  final MovieModel movie;
  SuccessMovieState({required this.movie});
}

final class FailureMovieState extends DetailsMovieStates {
  final String error;

  FailureMovieState({required this.error});
}

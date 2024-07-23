sealed class DetailsMovieStates {}

final class InitialMovieState extends DetailsMovieStates {}

final class SuccessMovieState extends DetailsMovieStates {}

final class FailureMovieState extends DetailsMovieStates {
  final String error;

  FailureMovieState({required this.error});
}

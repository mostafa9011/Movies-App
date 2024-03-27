import '../../config/models/movie_model.dart';

sealed class SearchMoviesStates {}

final class SearchInitial extends SearchMoviesStates {}

final class SearchLoadingState extends SearchMoviesStates {}

final class SearchSuccessState extends SearchMoviesStates {
  final List<MovieModel> moviesList;

  SearchSuccessState({required this.moviesList});
}

final class SearchFailureState extends SearchMoviesStates {
  final String error;

  SearchFailureState({required this.error});
}

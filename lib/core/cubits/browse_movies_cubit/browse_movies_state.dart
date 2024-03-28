import '../../config/models/movie_model.dart';

sealed class BrowseMoviesStates {}

final class BrowseInitial extends BrowseMoviesStates {}

final class BrowseLoadingState extends BrowseMoviesStates {}

final class BrowseSuccessState extends BrowseMoviesStates {
  final List<MovieModel> moviesList;

  BrowseSuccessState({required this.moviesList});
}

final class BrowseFailureState extends BrowseMoviesStates {
  final String error;

  BrowseFailureState({required this.error});
}

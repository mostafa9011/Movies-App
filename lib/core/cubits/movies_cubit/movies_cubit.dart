import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/api_service.dart';

import 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesStates> {
  MoviesCubit() : super(MoviesInitial());
  List<MovieModel> newReleasesMoviesList = [];

  getNewReleasesMovies() async {
    try {
      newReleasesMoviesList = await ApiService().getNewRealeases();

      emit(
        SuccessMoviesState(moviesList: newReleasesMoviesList),
      );
    } catch (e) {
      emit(FailureMoviesState());
    }
  }
}

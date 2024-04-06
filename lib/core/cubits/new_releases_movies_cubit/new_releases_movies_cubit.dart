import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/api_service.dart';

import 'new_releases_movies_state.dart';

class NewReleasesMoviesCubit extends Cubit<NewReleasesMoviesStates> {
  NewReleasesMoviesCubit() : super(MoviesInitial());
  List<MovieModel> moviesList = [];

  getNewReleasesMovies({required String url}) async {
    try {
      moviesList = await ApiService().getMoviesService(
        url: url,
      );

      emit(
        SuccessMoviesState(
          moviesList: moviesList,
        ),
      );
    } catch (e) {
      emit(
        FailureMoviesState(
          error: e.toString(),
        ),
      );
    }
  }
}

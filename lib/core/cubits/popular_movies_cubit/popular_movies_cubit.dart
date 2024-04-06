import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/api_service.dart';

import 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesStates> {
  PopularMoviesCubit() : super(InitialPopular());
  List<MovieModel> moviesList = [];

  getPopularMovies({required String url}) async {
    try {
      moviesList = await ApiService().getMoviesService(
        url: url,
      );

      emit(
        SuccessPopularState(
          moviesList: moviesList,
        ),
      );
    } catch (e) {
      emit(
        FailurePopularState(
          error: e.toString(),
        ),
      );
    }
  }
}

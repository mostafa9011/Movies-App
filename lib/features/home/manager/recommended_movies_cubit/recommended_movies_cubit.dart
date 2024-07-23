import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/services/api_service.dart';

import 'recommended_movies_state.dart';

class RecomendedMoviesCubit extends Cubit<RecomendedMoviesStates> {
  RecomendedMoviesCubit() : super(Initial());
  List<MovieModel> moviesList = [];

  getRecomendedMovies({required String url}) async {
    try {
      moviesList = await ApiService().getMoviesService(
        url: url,
      );

      emit(
        SuccessState(
          moviesList: moviesList,
        ),
      );
    } catch (e) {
      emit(
        FailureState(
          error: e.toString(),
        ),
      );
    }
  }
}

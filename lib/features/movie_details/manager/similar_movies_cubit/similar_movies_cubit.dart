import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/services/api_service.dart';

import 'similar_movies_state.dart';

class SimilarMoviesCubit extends Cubit<SimilarMoviesStates> {
  SimilarMoviesCubit() : super(SimilarInitial());
  List<MovieModel> moviesList = [];

  getSimilarMovies({
    required int id,
  }) async {
    try {
      moviesList = await ApiService().getMoviesService(
        id: id,
      );

      emit(
        SimilarSuccessState(
          moviesList: moviesList,
        ),
      );
    } catch (e) {
      emit(
        SimilarFailureState(
          error: e.toString(),
        ),
      );
    }
  }
}

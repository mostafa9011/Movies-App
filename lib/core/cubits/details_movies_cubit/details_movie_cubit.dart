import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/api_service.dart';

import 'details_movie_state.dart';

class DetailsMovieCubit extends Cubit<DetailsMovieStates> {
  DetailsMovieCubit() : super(InitialMovieState());
  late MovieModel movie;

  getDetailsMovie({required int id}) async {
    try {
      movie = await ApiService().getDetailsMoviesService(
        id: id,
      );

      emit(
        SuccessMovieState(
          movie: movie,
        ),
      );
    } catch (e) {
      emit(
        FailureMovieState(
          error: e.toString(),
        ),
      );
    }
  }
}

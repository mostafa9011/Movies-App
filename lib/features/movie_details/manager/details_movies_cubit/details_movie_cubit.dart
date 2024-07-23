import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/services/api_service.dart';

import 'details_movie_state.dart';

class DetailsMovieCubit extends Cubit<DetailsMovieStates> {
  DetailsMovieCubit() : super(InitialMovieState());
  late MovieModel movieDetails;

  getDetailsMovie({required int id}) async {
    try {
      movieDetails = await ApiService().getDetailsMoviesService(
        id: id,
      );
      emit(
        SuccessMovieState(),
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

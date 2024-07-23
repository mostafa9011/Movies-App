import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/services/api_service.dart';
import 'browse_movies_state.dart';

class BrowseMoviesCubit extends Cubit<BrowseMoviesStates> {
  BrowseMoviesCubit() : super(BrowseLoadingState());
  List<MovieModel> moviesList = [];

  getBrowseMovies({
    required String genresId,
  }) async {
    try {
      moviesList = await ApiService().getMoviesService(
        genresId: genresId,
      );

      emit(
        BrowseSuccessState(
          moviesList: moviesList,
        ),
      );
    } catch (e) {
      emit(
        BrowseFailureState(
          error: e.toString(),
        ),
      );
    }
  }
}

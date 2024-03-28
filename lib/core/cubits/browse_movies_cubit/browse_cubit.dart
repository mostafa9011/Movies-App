import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/config/services/api_service.dart';
import 'browse_movies_state.dart';

class BrowseMoviesCubit extends Cubit<BrowseMoviesStates> {
  BrowseMoviesCubit() : super(BrowseInitial());
  List<MovieModel> moviesList = [];

  getSearchMovies({
    required String query,
  }) async {
    emit(BrowseLoadingState());
    try {
      moviesList = await ApiService().getMoviesService(
        query: query,
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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/models/movie_model.dart';
import 'package:movies_app/core/services/api_service.dart';
import 'search_movies_state.dart';

class SearchMoviesCubit extends Cubit<SearchMoviesStates> {
  SearchMoviesCubit() : super(SearchInitial());
  List<MovieModel> moviesList = [];

  getSearchMovies({
    required String query,
  }) async {
    emit(SearchLoadingState());
    try {
      moviesList = await ApiService().getMoviesService(
        query: query,
      );

      emit(
        SearchSuccessState(
          moviesList: moviesList,
        ),
      );
    } catch (e) {
      emit(
        SearchFailureState(
          error: e.toString(),
        ),
      );
    }
  }
}

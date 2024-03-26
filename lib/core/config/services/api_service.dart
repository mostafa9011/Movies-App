import 'dart:developer';
import 'package:movies_app/core/config/constants.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/config/models/movie_model.dart';

class ApiService {
  final dio = Dio();

  Future<List<MovieModel>> getMoviesService({
     String? url,
    int? id,
  }) async {
    try {
      var response = await dio.get(
        id == null
            ? '$url&${Constants.apiKey}'
            : 'https://api.themoviedb.org/3/movie/$id/similar?language=en-US&page=1&${Constants.apiKey}',
      );
      var json = response.data;
      List<dynamic> results = json['results'];
      List<MovieModel> moviesList = [];
      for (var element in results) {
        MovieModel movie = MovieModel.fromJson(element);
        moviesList.add(movie);
      }
      return moviesList;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<MovieModel> getDetailsMoviesService({required int id}) async {
    var response = await dio.get(
      'https://api.themoviedb.org/3/movie/$id?append_to_response=mos&language=en-US&${Constants.apiKey}',
    );
    var json = response.data;
    MovieModel movie = MovieModel.fromJson(json);
    List<dynamic> genres = json['genres'];
    List<String> genresList = [];
    for (var element in genres) {
      genresList.add(
        element['name'],
      );
    }
    movie.genresList = genresList;
    log(movie.genresList![0]);
    //log(moviesList[9].overview);
    return movie;
  }
}

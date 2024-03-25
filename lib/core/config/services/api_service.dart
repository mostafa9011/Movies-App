import 'dart:developer';
import 'package:movies_app/core/config/constants.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/config/models/movie_model.dart';

class ApiService {
  final dio = Dio();

  Future<List<MovieModel>> getMoviesService({required String url}) async {
    try {
      var response = await dio.get(
        '$url&${Constants.apiKey}',
      );
      var json = response.data;
      List<dynamic> results = json['results'];
      List<MovieModel> moviesList = [];
      for (var element in results) {
        MovieModel movie = MovieModel.fromJson(element);
        moviesList.add(movie);
      }
      //log(moviesList[9].overview);
      return moviesList;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}

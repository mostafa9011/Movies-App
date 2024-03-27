class MovieModel {
  final int id;
  final String? backdropImage;
  final String title;
  final String overview;
  final String? posterImage;
  final String releaseDate;
  final double voteAverage;
  List<String>? genresList;

  MovieModel({
    this.genresList,
    required this.id,
    required this.backdropImage,
    required this.title,
    required this.overview,
    required this.posterImage,
    required this.releaseDate,
    required this.voteAverage,
  });
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      backdropImage: 'https://image.tmdb.org/t/p/w500${json['backdrop_path']}',
      title: json['title'],
      overview: json['overview'],
      posterImage: 'https://image.tmdb.org/t/p/w500${json['poster_path']}',
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'],
    );
  }
}

class DetailsMovieModel {
  final int id;
  final String backdropImage;
  final String title;
  final String overview;
  final String posterImage;
  final String releaseDate;
  final double voteAverage;
  final List<String> genres;

  DetailsMovieModel({
    required this.genres,
    required this.id,
    required this.backdropImage,
    required this.title,
    required this.overview,
    required this.posterImage,
    required this.releaseDate,
    required this.voteAverage,
  });
  factory DetailsMovieModel.fromJson(Map<String, dynamic> json) {
    return DetailsMovieModel(
        id: json['id'],
        backdropImage:
            'https://image.tmdb.org/t/p/w500${json['backdrop_path']}',
        title: json['title'],
        overview: json['overview'],
        posterImage: 'https://image.tmdb.org/t/p/w500${json['poster_path']}',
        releaseDate: json['release_date'],
        voteAverage: json['vote_average'],
        genres: json['genres']);
  }
}

class GenresList {
  final String id;

  GenresList({required this.id});
  // GenresList.fromJson(jason) {return jason['']}
}

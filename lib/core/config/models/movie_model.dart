class MovieModel {
  final int id;
  final String? backdropImage;
  final String title;
  final String overview;
  final String? posterImage;
  final String releaseDate;
  final double voteAverage;
  List<String>? genresList;
  String? cloudId;

  MovieModel({
    this.genresList,
    required this.id,
    required this.backdropImage,
    required this.title,
    required this.overview,
    required this.posterImage,
    required this.releaseDate,
    required this.voteAverage,
    this.cloudId,
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
      cloudId: json['cloudId'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'id': id,
      'overview': overview,
      'backdropImage': backdropImage,
      'posterImage': posterImage,
      'releaseDate': releaseDate,
      'voteAverage': voteAverage,
      'cloudId': cloudId,
    };
  }
}

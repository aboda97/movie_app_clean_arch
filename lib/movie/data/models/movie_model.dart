import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel({
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    //required super.originalTitle,
    required super.overview,
    required super.title,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      id: json['id'],
      //originalTitle: json['original_title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      title: json['title'],
      voteAverage: json['vote_average'],
    );
  }
}

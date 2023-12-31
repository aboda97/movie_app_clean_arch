import 'package:movie_app/features/movie_details/domain/entity/recommendation_movie_entity.dart';

class RecommendationMovieModel extends RecommendationMovieEntity {
  RecommendationMovieModel({
    required super.page,
    required super.results,
    required super.totalPages,
    required super.totalResults,
  });
  factory RecommendationMovieModel.fromJson(Map<String, dynamic> json) {
    return RecommendationMovieModel(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((movieJson) =>
              MovieModel.fromJson(movieJson as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );
  }
}

class MovieModel extends MovieEntity {
  MovieModel({
    required super.adult,
    required super.backdropPath,
    required super.id,
    required super.title,
    required super.originalLanguage,
    required super.originalTitle,
    required super.overview,
    required super.posterPath,
    required super.mediaType,
    required super.genreIds,
    required super.popularity,
    required super.releaseDate,
    required super.video,
    required super.voteAverage,
    required super.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String,
      id: json['id'] as int,
      title: json['title'] as String,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String,
      mediaType: json['media_type'] as String,
      genreIds: List<int>.from(json['genre_ids'] as List<dynamic>),
      popularity: json['popularity'] as double,
      releaseDate: json['release_date'] as String,
      video: json['video'] as bool,
      voteAverage: json['vote_average'] as double,
      voteCount: json['vote_count'] as int,
    );
  }
}

import 'package:movie_app/features/movie_details/data/models/geners_model.dart';
import 'package:movie_app/features/movie_details/domain/entity/movie_details_entity.dart';

class MovieDetailsModel extends MovieDetailsEntity {
  MovieDetailsModel({
    //  required super.adult,
    required super.backdropPath,
    //  required super.belongsToCollection,
    //  required super.budget,
    required super.genres,
    //  required super.homepage,
    required super.id,
    //  required super.imdbId,
    // required super.originalLanguage,
    // required super.originalTitle,
    required super.overview,
    // required super.popularity,
    // required super.posterPath,
    // required super.productionCompanies,
    // required super.productionCountries,
    required super.releaseDate,
    //  required super.revenue,
    required super.runtime,
    // required super.spokenLanguages,
    // required super.status,
    // required super.tagline,
    required super.title,
    // required super.video,
    // required super.voteAverage,
    // required super.voteCount,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      //  adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'] ?? '',
      // belongsToCollection: json['belongs_to_collection'] != null
      //     ? BelongsToCollectionModel.fromJson(json['belongs_to_collection'])
      //     : json['belongs_to_collection'],
      // budget: json['budget'] ?? 0,
      genres: (json['genres'] as List<dynamic>? ?? [])
          .map((genre) => GenersModel.fromJson(genre))
          .toList(),
      // homepage: json['homepage'] ?? '',
      id: json['id'] ?? 0,
      // imdbId: json['imdb_id'] ?? '',
      // originalLanguage: json['original_language'] ?? '',
      // originalTitle: json['original_title'] ?? '',
      overview: json['overview'] ?? '',
      // popularity: json['popularity'] ?? 0.0,
      // posterPath: json['poster_path'] ?? '',
      // productionCompanies:
      //     (json['production_companies'] as List<dynamic>? ?? [])
      //         .map((company) => ProductionCompaniesModel.fromJson(company))
      //         .toList(),
      // productionCountries:
      //     (json['production_countries'] as List<dynamic>? ?? [])
      //         .map((country) => ProductionCountriesModel.fromJson(country))
      //         .toList(),
      releaseDate: json['release_date'] ?? '',
      //  revenue: json['revenue'] ?? 0,
      runtime: json['runtime'] ?? 0,
      // spokenLanguages: (json['spoken_languages'] as List<dynamic>? ?? [])
      //     .map((language) => SpokenLanguagesModel.fromJson(language))
      //     .toList(),
      // status: json['status'] ?? '',
      // tagline: json['tagline'] ?? '',
      title: json['title'] ?? '',
      // video: json['video'] ?? false,
      // voteAverage: json['vote_average'] ?? 0.0,
      // voteCount: json['vote_count'] ?? 0,
    );
  }
}

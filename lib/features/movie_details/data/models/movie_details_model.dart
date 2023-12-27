import 'package:movie_app/features/movie_details/data/models/geners_model.dart';
import 'package:movie_app/features/movie_details/domain/entity/movie_details_entity.dart';

class MovieDetailsModel extends MovieDetailsEntity {
  const MovieDetailsModel({
    required super.backdropPath,
    required super.genres,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.title,
    //  required super.adult,
    //  required super.belongsToCollection,
    //  required super.budget,
    //  required super.homepage,
    //  required super.imdbId,
    // required super.originalLanguage,
    // required super.originalTitle,
    // required super.popularity,
    // required super.posterPath,
    // required super.productionCompanies,
    // required super.productionCountries,
    //  required super.revenue,
    // required super.spokenLanguages,
    // required super.status,
    // required super.tagline,
    // required super.video,
    // required super.voteAverage,
    // required super.voteCount,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      backdropPath: json['backdrop_path'] ?? '',
      genres: (json['genres'] as List<dynamic>? ?? [])
          .map((genre) => GenersModel.fromJson(genre))
          .toList(),
      id: json['id'] ?? 0,
      overview: json['overview'] ?? '',
      releaseDate: json['release_date'] ?? '',
      runtime: json['runtime'] ?? 0,
      title: json['title'] ?? '',
      //  adult: json['adult'] ?? false,
      // belongsToCollection: json['belongs_to_collection'] != null
      //     ? BelongsToCollectionModel.fromJson(json['belongs_to_collection'])
      //     : json['belongs_to_collection'],
      // budget: json['budget'] ?? 0,
      // homepage: json['homepage'] ?? '',
      // imdbId: json['imdb_id'] ?? '',
      // originalLanguage: json['original_language'] ?? '',
      // originalTitle: json['original_title'] ?? '',
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
      //  revenue: json['revenue'] ?? 0,
      // spokenLanguages: (json['spoken_languages'] as List<dynamic>? ?? [])
      //     .map((language) => SpokenLanguagesModel.fromJson(language))
      //     .toList(),
      // status: json['status'] ?? '',
      // tagline: json['tagline'] ?? '',
      // video: json['video'] ?? false,
      // voteAverage: json['vote_average'] ?? 0.0,
      // voteCount: json['vote_count'] ?? 0,
    );
  }
}

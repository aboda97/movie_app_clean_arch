import 'package:equatable/equatable.dart';
import 'package:movie_app/features/movie_details/domain/entity/geners_entity.dart';

class MovieDetailsEntity extends Equatable {
  //final bool adult;
  final String backdropPath;
  //final BelongsToCollectionEntity belongsToCollection;
  //final int budget;
  final List<GenresEntity> genres;
  //final String homepage;
  final int id;
  //final String imdbId;
  //final String originalLanguage;
  //final String originalTitle;
  final String overview;
  //final double popularity;
  //final String posterPath;
  //final List<ProductionCompaniesEntity> productionCompanies;
  //final List<ProductionCountriesEntity> productionCountries;
  final String releaseDate;
  //final int revenue;
  final int runtime;
  //final List<SpokenLanguagesEntity> spokenLanguages;
  //final String status;
  //final String tagline;
  final String title;
  //final bool video;
  //final double voteAverage;
  //final int voteCount;

  const MovieDetailsEntity({
    // required this.adult,
    required this.backdropPath,
    // required this.belongsToCollection,
    // required this.budget,
    required this.genres,
    // required this.homepage,
    required this.id,
    // required this.imdbId,
    // required this.originalLanguage,
    // required this.originalTitle,
    required this.overview,
    // required this.popularity,
    // required this.posterPath,
    // required this.productionCompanies,
    // required this.productionCountries,
    required this.releaseDate,
    // required this.revenue,
    required this.runtime,
    // required this.spokenLanguages,
    // required this.status,
    // required this.tagline,
    required this.title,
    // required this.video,
    // required this.voteAverage,
    // required this.voteCount,
  });

  @override
  List<Object?> get props => [
        //  adult,
        backdropPath,
        //  belongsToCollection,
        //  budget,
        genres,
        // homepage,
        id,
        //  imdbId,
        //  originalLanguage,
        //  originalTitle,
        overview,
        // popularity,
        //  posterPath,
        // productionCompanies,
        // productionCountries,
        releaseDate,
        // revenue,
        runtime,
        // spokenLanguages,
        // status,
        // tagline,
        title,
        // video,
        // voteAverage,
        // voteCount,
      ];
}

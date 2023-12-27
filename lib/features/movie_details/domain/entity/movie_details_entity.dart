import 'package:equatable/equatable.dart';
import 'package:movie_app/features/movie_details/domain/entity/geners_entity.dart';

class MovieDetailsEntity extends Equatable {
  final String backdropPath;
  final List<GenresEntity> genres;
  final int id;
  final String overview;
  final String releaseDate;
  final int runtime;
  final String title;
  //final bool adult;
  //final BelongsToCollectionEntity belongsToCollection;
  //final int budget;
  //final String homepage;
  //final String imdbId;
  //final String originalLanguage;
  //final String originalTitle;
  //final double popularity;
  //final String posterPath;
  //final List<ProductionCompaniesEntity> productionCompanies;
  //final List<ProductionCountriesEntity> productionCountries;
  //final int revenue;
  //final List<SpokenLanguagesEntity> spokenLanguages;
  //final String status;
  //final String tagline;
  //final bool video;
  //final double voteAverage;
  //final int voteCount;

  const MovieDetailsEntity({
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    // required this.adult,
    // required this.belongsToCollection,
    // required this.budget,
    // required this.homepage,
    // required this.imdbId,
    // required this.originalLanguage,
    // required this.originalTitle,
    // required this.popularity,
    // required this.posterPath,
    // required this.productionCompanies,
    // required this.productionCountries,
    // required this.revenue,
    // required this.spokenLanguages,
    // required this.status,
    // required this.tagline,
    // required this.video,
    // required this.voteAverage,
    // required this.voteCount,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        genres,
        id,
        overview,
        releaseDate,
        runtime,
        title,
        //  adult,
        //  belongsToCollection,
        //  budget,
        // homepage,
        //  imdbId,
        //  originalLanguage,
        //  originalTitle,
        // popularity,
        //  posterPath,
        // productionCompanies,
        // productionCountries,
        // revenue,
        // spokenLanguages,
        // status,
        // tagline,
        // video,
        // voteAverage,
        // voteCount,
      ];
}

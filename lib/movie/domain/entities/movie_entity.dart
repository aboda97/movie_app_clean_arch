import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalTitle;
  final String overview;
  final String title;
  final double voteAverage;
  final String releaseDate;

  const MovieEntity({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        genreIds,
        id,
        originalTitle,
        overview,
        title,
        voteAverage,
        releaseDate,
      ];
}
